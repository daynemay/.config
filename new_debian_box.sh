# TODO: check if apt-get exists (i.e. that we are on a Debian/Ubuntu/whatever 
# box) before we try to use it. 
# TODO: Bail with a message if not.

# Install git, vim, zsh
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install zsh

# TODO: check if directories exist before creating them

# Install Desert colour scheme for Vim
# Referenced in .vimrc, below
cd ~
mkdir ~/.vim
mkdir ~/.vim/colors
cd ~/.vim/colors
wget https://raw.github.com/fugalh/desert.vim/master/desert.vim

# Make a projects directory
cd ~
mkdir ~/projects
cd projects

# Get the config project
git clone https://github.com/daynemay/.config.git
mv .config config

# Link ~/.vimrc and ~/.zshrc to the version controlled ones
ln -s ~/projects/config/vim/.vimrc ~/.vimrc
ln -s ~/projects/config/zsh/.vimrc ~/.zshrc

# TODO: DroidSansMono font
