# borrowed from: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/ 
git clone --bare https://raw.githubusercontent.com/korede-ta/dotfiles.git $HOME/.cfg
function config {
   git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
	echo "Checked out config.";
else
	echo "Backing up pre-existing dot files.";
	config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;

config checkout
config config status.showUntrackedFiles noinformation
