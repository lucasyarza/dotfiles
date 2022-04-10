# Enabling Italic Text in iTerm2 and Tmux

## iTerm 2
### Enable support for italic text
_Preferences > Profiles > Text > Italic text allowed_

### Create a new entry in the TERMINFO database
```
$ tic iterm2.terminfo
```

### Bind iTerm2 to new TERMINFO entry
_Preferences > Profiles > Terminal > Report Terminal Type: > xterm-256color-italic_

### Test it
Close and reopen iTerm2, then try
```
$ echo `tput sitm`italics`tput ritm`
```
_If the output is printed in italicised, then iTerm2 is now capable of printing italic text._

```
$ echo $TERM
```
_should now output xterm-256color-italic_

## Tmux
### Create new entry in the TERMINFO database
```
$ tic -x tmux.terminfo
```

### Bind tmux to new TERMINFO entry
Set the following in ~/.tmux.conf:
```
set -g default-terminal "tmux-256color"
set -as terminal-overrides ',xterm*:sitm=\E[3m'
```

### Test it
Close and reopen tmux, then try
```
$ echo `tput sitm`italics`tput ritm`
```
_If the output is printed in italicised, then tmux is now capable of printing italic text_
```
$ echo $TERM
```
_should now output tmux-256color_

## Source
https://weibeld.net/terminals-and-shells/italics.html
