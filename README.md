# dotfiles

My Linux user-specific configuration files structured for management by `stow`.

## Usage

Clone this repo in your `$HOME` directory:

    $ cd ~
    $ git clone https://github.com/gleenhouts/dotfiles.git

Copy configuration files/directories and their path relative to `$HOME` to their respective package's subdirectory, remove the originals:

    $ mkdir ~/dotfiles/sublime-text
    $ cp --parents .config/sublime-text-3/Packages/User/Preferences.sublime-settings dotfiles/sublime-text
    $ rm .config/sublime-text-3/Packages/User/Preferences.sublime-settings

Let `stow` set up the symlinks:

    $ cd ~/dotfiles
    $ stow bash git sublime-text xfce4

Note: When cloning on a fresh installation, default files in `$HOME` need to be removed first or `stow` will complain. For example:

    $ rm ~/.bashrc

Add/modify files using standard `git` commands:

    $ git status -vv
    $ git add [file]
    $ git commit -am 'Commit message'
    $ git push
