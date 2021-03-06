" 	URL: http://vim.wikia.com/wiki/Example_vimrc
set nocompatible
filetype indent plugin on
set updatetime=250

" Completion Plugin Stuff
let g:completor_gocode_binary = '/Users/korede/code/go/bin/gocode'
let g:completor_clang_binary = '/usr/bin/clang'
let g:comletor_node_binary = '/usr/local/bin/node'
" let g:ycm_filetype_specific_completion_to_disable = {'markdown': 1}
let g:javascript_plugin_jsdoc = 1
let g:go_fmt_command = "goimports"

" Vim FuzzyFind
set path+=**

" Manual plugins for completion based on the web component spec
set runtimepath^=~/.vim/bundle/vim-webcomponents/syntax/css.vim
set runtimepath^=~/.vim/bundle/vim-webcomponents/syntax/html.vim

au BufRead,BufNewFile *.tid set filetype=tid
au! Syntax tid source ~/.vim/syntax/tid.vim

syntax on " syntax highlighting
" set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"  " truecolor support
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
let &t_Co=256

" COLOR STUFF
set background=light
hi Normal ctermbg=NONE guibg=NONE
hi VertSplit ctermbg=233 ctermfg=233
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set noswapfile
if has("persistent_undo")
  let undoDir = expand('$HOME/.undodir')
  call system('mkdir -p ' . undoDir)
  let &undodir = undoDir
  set undofile
endif
set hidden  " cross session buffers + undo history + warning for quiting w/o saving + .swp files
" set confirm
" set autowriteall
set wildmenu  " Better command-line completion
set showcmd  " Show partial commands in the last line of the screen
" set nomodeline
" set ignorecase
" set smartcase
set incsearch   " search as you type
set hlsearch  " highlight searches
set backspace=eol,start,indent  " Allow backspacing over autoindent, line breaks and start of insert action
" set bs=2 "same as above
set nostartofline  " Stop certain movements from always going to the first character of a line.
set ruler  " Display the cursor position on the last line of the screen or in the status line of a window
"set laststatus=2  " Always display the status line, even if only one window is displayed
set visualbell  " Use visual bell instead of beeping when doing something wrong
set mouse=a  " Enable use of the mouse for all modes
set mouse=nicr
"set cmdheight=2 " Set the command window height to 2 lines, to avoid many cases of having to press Enter to cont. 
set number  " Display line numbers on the left
set notimeout ttimeout ttimeoutlen=200  " Quickly time out on keycodes, but never time out on mappings
set pastetoggle=<F2>  " Use <F2> to toggle between 'paste' and 'nopaste'
":au BufWinLeave * mkview  " automatically save/load fold state
":au! BufWinEnter * silent loadview
set showmode
set showmatch
"set tw=120	" textwidth
set ffs=unix	" fileformats
set wildmode=longest,list
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set shiftround  " Round indent to multiples of shiftwidth  (sr)
set autoindent
set smartindent
set wrap
set lbr  " linebreak
set showbreak=+
set laststatus=2
set vb t_vb =  " make sure visual bell is off
" set statusline=%F

" MAPPINGS
map Y y$
nnoremap <C-L> :nohl<CR><C-L>  
map <F1> <Esc>
imap <F1> <Esc>
imap jj <Esc>
map <M-Right> w
map <M-Left> b
map <M-l> w
map <M-h> b
map <F3> :set invlist<CR>  " Show tabs, newlines, etc
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-t> :FZF<CR>
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
map <M-_> :show number!
let mapleader = ","

if executable('rg')
  " Integrate with ripgrep
  set grepprg=rg\ --vimgrep
  set grepformat=%f:%l:%c:%m,%f:%l:%m
end
command! -nargs=+ Grep execute 'silent grep! <args>' | copen | redraw!
nnoremap <Leader>/ :Grep ""<Left>

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" highlighting tweaks
augroup prisma_ft
	au!
	autocmd BufNewFile,BufRead *.prisma  set syntax=graphql
augroup END

" spaces to tabs
augroup haskell 
	au!
	autocmd BufNewFile,BufRead *.hs set tabstop=2 shiftwidth=2 expandtab
augroup END

" statusline
source ~/.vim/_custom/statusline.vim

" source ~/.vim/lhaskell.vim
"  source ~/.vim/simple_lhaskell.vim

" PLUGIN COMMANDS
autocmd! User GoyoEnter Limelight
autocmd! User GoyoEnter Limelight!
let w:airline_disabled = 0
let g:airline#extensions#ale#enabled = 0
" let g:airline_theme='gotham'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
map <leader>at :ALEToggle<CR>
autocmd! VimEnter ALEToggle

" RTP Mods
set rtp+=/usr/local/opt/fzf

" RTP Mods
set rtp+=/usr/local/opt/fzf

" CUSTOM COMMANDS
function! R(...)
	if a:0 == 2
		execute "r ! sed -n " . a:2 . "p " . a:1
	elseif a:0 == 1
		execute "r " . a:1
	endif
endfunction

" Create Custom Command mapping to ':R'
command! -nargs=+ R :call R(<f-args>)

let g:ale_fixers = {'rust': ['rustfmt'], 'ocaml':['ocamlformat']}
let g:ale_fix_on_save = 1

" execute pathogen#infect()
