# SWAP LATL & LWIN

* Run setxkbmap -print | xkbcomp -xkb -o original.xkb -.Then copy original.xkb to switch-LALT-LCTL.xkb. Keep the file original.xkb as a backup, better remove write permission.
* Edit switch-LALT-LCTL.xkb in the block xkb_keycodes and exchange the keycodes for LALT and LCTL.
* Run xkbcomp switch-LALT-LCTL.xkb $DISPLAY to active your new layout. Run xkbcomp original.xkb $DISPLAY to restore the old one.


Those changes might not persist if keyboard layout is switched. The easiest solution I have found is to swap codes globally in the /usr/share/X11/xkb/keycodes/evdev file.

Bckup of evdev before override