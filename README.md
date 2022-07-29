# floaty.nvim

A very simple plugin to create neovim floating windows anywhere on screen.

## Commands

- `:FS` opens a scratch buffer in a floaty window.

## Functions

- `OpenFloatingBuffer(x,y,w,h)` opens a scratch buffer in a floaty window at 
  specific coordinates. If x and y are negative, the window is created offset 
  from the opposite border. (-1, -1, 10, 10) opens the floaty in the bottom-right
  corner. Returns the window ID.

## Compatible with vim-plug
