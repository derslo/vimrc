git init --bare $HOME/.vimcfg
alias vimconfig='/usr/bin/git --git-dir=$HOME/.vimcfg/ --work-tree=$HOME'
vimconfig config --local status.showUntrackedFiles no
echo "alias vimconfig='/usr/bin/git --git-dir=$HOME/.vimcfg/ --work-tree=$HOME'" >> $HOME/.bashrc
