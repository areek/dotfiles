ln -s ~/dotfiles/vim_conf/vim/janus/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim_conf/vim/janus/vim/gvimrc ~/.gvimrc
ln -s ~/dotfiles/vim_conf/vim/janus/vim ~/.vim
ln -s ~/dotfiles/vim_conf/vimrc.after ~/.vimrc.after
ln -s ~/dotfiles/vim_conf/vimrc.before ~/.vimrc.before
ln -s ~/dotfiles/vim_conf/janus ~/.janus
git submodule init && git submodule update
cd ~/dotfiles/vim_conf/vim && rake
