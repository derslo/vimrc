git clone --bare https://github.com/derslo/vimrc.git $HOME/.vimcfg
function vimconfig {
   /usr/bin/git --git-dir=$HOME/.vimcfg/ --work-tree=$HOME $@
}
mkdir -p .vimconfig-backup
vimconfig checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    vimconfig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .vimconfig-backup/{}
fi;
vimconfig checkout
vimconfig config status.showUntrackedFiles no
