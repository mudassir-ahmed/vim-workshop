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
