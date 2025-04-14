# Custom zsh template

This theme is basically just the default theme for oh-my-zsh "robbyrussel" but with some custom colours and a "sysmsg" function that sends out a quick message on startup and exit.

You can download and use this by putting the theme in your custom themes directory and changing `ZSH_THEME` in your ~/.zshrc file to "connor". By default the custom themes directory is `.oh-my-zsh/custom/themes/`, so that's where it'll be if you haven't configured it!


# vimrc
This also contains my .vimrc file! To use it, either replace the vimrc file in your default location or set up an alias to run 

```
vim -u /path/here/zsh_custom/.vimrc
``` 

or set up a symlink if you don't want .vimrc in your home directory:

```
cd ~
ln -s /path/here/zsh_custom/.vimrc .vimrc
```
