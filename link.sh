cd $(dirname $0)

ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/config/git ~/.config/git

ln -s $(pwd)/config/bat ~/.config/bat
ln -s $(pwd)/config/nvim ~/.config/nvim
mv ~/.config/lvim ~/.config/lvim.copy
ln -s $(pwd)/config/lvim ~/.config/lvim

# .zshrc
mv ~/.zshrc ~/.zshrc.copy
ln -s $(pwd)/.zshrc ~/.zshrc

# asdf
ln -s $(pwd)/.tool-versions ~/.tool-versions

# .functions
ln -s $(pwd)/.functions ~/.functions
