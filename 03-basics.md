# 03: basics

## Vim can teach you the basics also

Type `vimtutor` in your terminal or `:h`. The documentation
is a good place to find out things vim can do that you
didn't know it could.

## But let's demo

`cd demo-app && npm run serve` to start the demo project.

## Here's some vim commands we've used

### Starting vim

- `vim <file>...`

### Movement (Normal mode)

- `<Esc>`
- `h`
- `j`
- `k`
- `l`
- `gg`
- `G` and `{line number}G`

### Quitting

- `:q!`
- `:wq` or `:x`

### Editing

#### Deletion

- `x`
- `dw`
- `d$`
- `dd`

#### Insertion (Insert Mode)

- `i` and `I`
- `a` and `A`
- `r` and `R`
- `o` and `O`
- `c` and `C`

#### Operators and Motions

- `d` is an _operator_
- `w`, `e`, `$`, `0` are _motions_
- motions and operators take _counts_
  - e.g., `2w` or `2dw` or `d2w`
- `%`

#### Undo & Redo

- `u`
- `U`
- `<C-r>`

#### Copy & Paste (Yank & Put)

- some operators grab text into registers
- `p`
- `y`

#### Substitution

- `:{range}s/{old}/{new}/{flags}`
- `g` and `c` flags

#### Ranges

- `:{line number},{line number}`
- `:%`
- `:'<,'>`

#### External Commands

- `:!{ext command}`

#### Reading & Writing Files to & from Disk

- `:w {file name}`
- `:r {file name}`
- `:r !{ext command}`
- `:w !{ext command}`

#### Visual Mode

- `v`

## I told you I would teach you over 10,000 commands

Vim is like a language.
Operator/action followed by a motion or text object just
like a sentence. Pro tip: always try to return to normal
mode (hence the name).
