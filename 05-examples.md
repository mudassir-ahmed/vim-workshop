# 05: examples

## Vim keybindings in bash
Type `set -o vi`. This will allow you to use vim 
keybindings. Hit `Esc` then `v` and you get 
the vim editor.

## Run a command when you save a file
`:autocmd BufWritePost * !echo hi there`

## Use the built-in calculator
In insert mode, hit `^R` followed by `=`. Then type
in `1+2` and hit enter.

## Insert output of bash command into vim
`:r !ls`. We could have ran the calculator example
usign `:r !echo "1+2" | bc`.

## Launch file in vim with read only mode
`vim -MR filename.extension`

## Line Movement

## Macros

## Marks

## Find

## Search and replace

## Jump to line 12 column 5
`:call cursor(12,5)` or `:12` then hit enter followed by `5l`.

## Check your vim path and find files
This is where vim will search when using `:find file_name`. 
Just type `:set path?`. Pro tip: get vim to search subfolders by using `;set path+=**`.

## Insert a path of a file in insert mode 
In insert mode use `^x` followed by `^f`. Try this: in insert mode 
type `/` then hit `^x` followed by `^f`. To cycle through choices
using `^f` or `^p` and `^n`. Learn more about useage with `:h ins-completion`.

## Jump to any open buffer (file)
Try `:b intro`. Pro tip: see opened buffers using `:ls`.
