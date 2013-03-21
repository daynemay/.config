# TODO: Ensure that apt-get exists - i.e. we're on a Debian or
# or Ubuntu box - before we try to use it.
# TODO: Bail with appropriate message if not the case.

# Install git, vim, zsh
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install zsh

# Default zsh
chsh -s `which zsh`

# TODO: Check for existence of directories before creating them

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
ln -s ~/projects/config/zsh/.zshrc ~/.zshrc

# TODO: DroidSansMono font

# Install Apache
sudo apt-get install apache2
