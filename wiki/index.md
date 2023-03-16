# Current Topic
  - Welcome back everyone.  I name is Traap.

# Overview
  - Today I will demonstrate how you can boost your personal productivity using
    Tmux and Neovim or Vim.

# TMUX Setup
  - Plugins:
    * [(tpm) tmux plugin manager](https://github.com/tmux-plugins/tpm.git)
    * [My TMUX Custimizations](https://github.com/Traap/tmux)

# Neovim Setup
  - Package manager:
    * [lazy.nvim](https://github.com/folke/lazy.nvim)

  - Bootstrap:
    * [LazyVim](https://github.com/LazyVim/LazyVim)

  - Customization:
    * [nvim.traap](https://github.com/Traap/nvim.)

  - Plugins:
    * [(tpm) tmux plugin manager](https://github.com/tmux-plugins/tpm.git)
    * [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
    * [vim-tmux-runner](https://github.com/christoomey/vim-tmux-runner)
    * [vim-bundle-tmux-runner](https://github.com/Traap/vim-bundle-tmux-runner)
    * [tmux](https://github.com/Traap/tmux)

# Vim Setup
  - Package manager: [vim-plug](https://github.com/junegunn/vim-plug)
  - Plugins:
    *   Same as Neovim

# Navigation demonstrating
  - Move {direction} to next: tmux split, neovim split, vim split, or wrap.

    key  | direction
   <c-h> | left
   <c-j> | down
   <c-k> | up
   <c-l> | right

# Running code demonstration
  - Shoutout to "Brian Kernighan" and Fibonacci sequence using recursion.

## Tmux Runner Keybindings

  Vim/Nvim bindings | maybe new binding | Tmux commands
  <leader>cr        | <leader>tC        | VtrClearRunner
  <leader>fc        | <leader>tc        | VtrFlushCommand
  <leader>fr        | <leader>tF        | VtrFocusRunner
  <leader>kr        | <leader>tk        | VtrKillRunner
  <leader>or        | <leader>to        | VtrOpenRunner
  <leader>ra        | <leader>ta        | VtrReattachRunner
  <leader>rr        | <leader>tr        | VtrResizeRunner
  <leader>rR        | <leader>tR        | VtrReorientRunner
  <leader>sc        | <leader>ts        | VtrSendCommandToRunner
  <leader>sf        | <leader>tf        | VtrSendFile
  <leader>sl        | <leader>tl        | VtrLinesToRunner

## Seed VtrSendCommand with:
cd ~/git/youtube/ && clear

# Programs to run
Command                                                        | Languages
clear && cd lsp && g++ test.c && time ./a.out && cd .. #       | C
clear && cd lsp && g++ test.cpp && time ./a.out && cd .. #     | C++
clear && cd lsp/dotnet && time dotnet run && cd ../.. #        | C Sharp
clear && cd lsp && time go run test.go && cd .. #              | Go
clear && cd lsp && ghc -O test.hs && time ./test && cd .. #    | Haskell
clear && cd lsp && time java test.java && cd .. #              | Java
clear && cd lsp && time luajit test.lua && cd .. #             | Lua
clear && cd lsp && time python test.py && cd .. #              | Python
clear && cd lsp && time ruby.rb && cd .. #                     | Ruby
clear && cd lsp/rust && time cargo run --release && cd ../.. # | Rust
clear && cd lsp && tsc test.ts && time node test.js && cd .. # | Typescript

# Let's Do This!!!
  * Previous Posts

  - [Videos posted](Videos Posted)
