cd $(dirname $0)
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/config/git ~/.config/git
ln -s $(pwd)/config/bat ~/.config/bat
ln -s $(pwd)/config/nvim ~/.config/nvim

# .zshrc
mv ~/.zshrc ~/.zshrc.copy
ln -s $(pwd)/.zshrc ~/.zshrc
