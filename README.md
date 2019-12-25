# dotfiles

My Linux user-specific configuration files structed for management by `GNU Stow`.

## Usage

Clone this repo in your $HOME directory.

    $ cd ~
    $ git clone https://github.com/gleenhouts/dotfiles.git

Copy configuration files/directories and their path relative to $HOME their respective package's subdirectory.

    $ mkdir ~/dotfiles/sublime-text
    $ cp --parents .config/sublime-text-3/Packages/User/Preferences.sublime-settings dotfiles/sublime-text
    $ rm .config/sublime-text-3/Packages/User/Preferences.sublime-settings

Let Stow set up the symlinks.

    $ cd ~/dotfiles
    $ stow sublime-text

Add/modify files using standard `git` commands.

    $ git status
    $ git add [file]
    $ git commit -m 'Commit message'
    $ git push
