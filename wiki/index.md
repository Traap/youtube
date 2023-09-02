# Greeting
  - Welcome back everyone.  Name is Traap.

# Today's Topic
  - Today I will demonstrate How I setup a new toggled Tmux session

# The following tools are used
  - BSPWM tiling window manager
  - Bash shell
  - Harpoon
  - Neovim
  - Telescope
  - Tmux
  - Wiki.vim
  - alacrity
  - ao
  - fugitive
  - sxhkd
  - todo-comments
  - toggler

# Cut and Paste Code Area
## Add to sxhkdrc
    notify-send 'Neovim' 'Neovim session toggled.'; \
      toggler Nvim, \

## Add do toggler
    "Nvim") toggle_winclass "$1" "$GITHOME/nvim.trap" ;;

## Discuss ao changes.

# Let's Do This!!!
  - [Videos posted](Videos Posted)
