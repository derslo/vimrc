alias vimconfig='/usr/bin/git --git-dir=$HOME/.vimcfg/ --work-tree=$HOME'

echo "alias vimconfig='/usr/bin/git --git-dir=$HOME/.vimcfg/ --work-tree=$HOME'" >> $HOME/.bashrc
echo ".vimcfg" >> .gitignore

git clone --bare https://github.com/derslo/vimrc.git $HOME/.vimcfg
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

mkdir .vim/colors
mkdir -p .vimconfig-backup

curl -Lks https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim >> .vim/colors/solarized.vim

vimconfig checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    vimconfig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .vimconfig-backup/{}
fi;
vimconfig checkout
vimconfig config status.showUntrackedFiles no
