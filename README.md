modus-operandi
==============

My dotfiles (e.g. vim configuration, bashrc, etc.)

After cloning the git repository, the following post setup steps should be
followed:

[1] Initialize and update all submodules:

      git submodule init
      git submodule update

[2] Create symbolic links to the desired dotfiles within your home directory:

      Bash Setup
         ln -s ~/.dotfiles/bashrc ~/.bashrc

      Git Setup
         ln -s ~/.dotfiles/gitconfig ~/.gitconfig
         ln -s ~/.dotfiles/gitignore ~/.gitignore
      

      Vim Setup
         ln -s ~/.dotfiles/vimrc ~/.vimrc
         ln -s ~/.dotfiles/gvimrc ~/.gvimrc
         ln -s ~/.dotfiles/vim ~/.vim

         NOTE: On windows, files in the home directory should be named
               _vimrc, _gvimrc, and vimfiles, respectively.
