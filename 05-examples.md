# 05: examples

## Vim keybindings in bash
Type `set -o vi`. This will allow you to use vim 
keybindings. Hit `Esc` then `v` and you get 
the vim editor.

# Run a command when you save a file
`:autocmd BufWritePost * !echo hi there`
