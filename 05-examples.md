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
using `:r !echo "1+2" | bc`.

## Launch file in vim with read only mode

`vim -MR filename.extension`

## Macros

In normal mode start recording a macro by hitting `q` followed by a character
name the macro. To play the macro hit `@` followed by the character you used.

## Marks

Hit `m` followed by any character. To jump to the mark hit backtick followed by
the character you chose.

## Find

In normal mode hit `/your_search_query`.

## Search and replace globally

:%s/foo/bar/g

## Jump to line 12 column 5

`:call cursor(12,5)` or `:12` then hit enter followed by `5l`.

## Check your vim path and find files

This is where vim will search when using `:find file_name`.
Just type `:set path?`. Pro tip: get vim to search subfolders by using `:set path+=**`.

## Run external command on visual selection

In visual mode select text and hit `!` followed by the external command you
want to run on the selection. Some cool external commands are `figlet`,
`column`, `cowsay` in addition to others.

## Insert a path of a file in insert mode

In insert mode use `^x` followed by `^f`. Try this: in insert mode
type `/` then hit `^x` followed by `^f`. To cycle through choices
using `^f` or `^p` and `^n`. Learn more about usage with `:h ins-completion`.

## Jump to any open buffer (file)

Try `:b intro`. Pro tip: see opened buffers using `:ls`.
