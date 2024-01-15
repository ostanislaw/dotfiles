git clone --bare git@github.com:ostanislaw/dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p $HOME/.cfg-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "^\s+\w*" | awk {'print $1'} | xargs -I{} sh -c 'mkdir -p $HOME/.cfg_backup/$(dirname {}) && mv {} $HOME/.cfg_backup/{}'
fi;
config checkout
config config status.showUntrackedFiles no

cp /etc/skel/.bashrc $HOME
$HOME/install_essential_tools.sh
