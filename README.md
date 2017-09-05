# xmonad-config
xmonad-config is my [xmonad](http://xmonad.org/) configuration was inspired by [Vic Fryzel](https://github.com/vicfryzel/xmonad-config), [gilbertw1](https://gist.github.com/gilbertw1/c33e79eb76fcb5a47411da881c621639) and [Ethan Schoonover](https://github.com/altercation/dotfiles-tilingwm)


## Introduction

If you are unfamiliar with xmonad, it is a tiling window manager that is
notoriously minimal, stable, beautiful, and featureful.  If you find yourself
spending a lot of time organizing or managing windows, you may consider trying
xmonad.

However, xmonad can be somewhat difficult to configure if you're new to
Haskell or even to xmonad itself.

This project contains a completely working and very usable xmonad
configuration "out of the box".  If you are just starting out with xmonad,
this will give you a configuration that I personally use every day. Thought it
has been put into the colors, key bindings, layouts, and supplementary scripts 
to make life easier.

This project is also recommended for advanced xmonad users, who may just not
want to reinvent the wheel.  All source provided with this project is well
documented and simple to customize.

![First screenshot of xmonad-config](https://raw.githubusercontent.com/randomthought/xmonad-config/master/screenshot1.png)
![Second screenshot of xmonad-config](https://raw.githubusercontent.com/randomthought/xmonad-config/master/screenshot2.png)
For source code, or to contribute, see the the main project at
[xmonad-config project page](http://github.com/vicfryzel/xmonad-config).


## Requirements

* xmonad
* xmonad-contrib
* [xmobar](http://projects.haskell.org/xmobar/)
* [stalonetray](http://stalonetray.sourceforge.net/)
* [rofi](https://davedavenport.github.io/rofi/)

### Installing requirements on [Arch Linux](http://www.archlinux.org/)

    sudo pacman -S xmonad xmonad-contrib xmobar stalonetray \
        xcompmgr rofi

### Installing requirements on [Ubuntu Linux](http://www.ubuntu.com/)

    sudo aptitude install xmonad libghc-xmonad-contrib-dev xmobar stalonetray \
        rofi

## Installation

Installing xmonad-config is a matter of backing up any xmonad configuration
you may already have, cloning the git repository, and updating your PATH.

    cd
    mv .xmonad .xmonad.orig
    git clone https://github.com/randomthought/xmonad-config.git .xmonad

Once xmonad-config is installed, you also need to ensure you can actually
start xmonad.  The mechanism to do this varies based on each environment, but
here are some instructions for some common login managers.

### Starting xmonad from lightdm, xdm, kdm, or gdm

    ln -s ~/.xmonad/bin/xsession ~/.xsession
    # Logout, login from lightdm/xdm/kdm/gdm

### Starting xmonad from slim

    ln -s ~/.xmonad/bin/xsession ~/.xinitrc
    # Logout, login from slim


## Keyboard shortcuts

After starting xmonad, use the following keyboard shortcuts to function in
your new window manager.  I recommend you print these out so that you don't
get stranded once you logout and back in.

|                           Key Binding                        |                        Action                          |
|-------------------------------------------------------------:|:-------------------------------------------------------|
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Return</kbd>            |                      Start a terminal                  |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>0</kbd>                  |                        Lock screen                     |
| <kbd>Win</kbd>+<kbd>p</kbd> | Start dmenu.  Once it comes up, type the name of a program and enter |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd> | Take screenshot in select mode. Click or click and drag to select |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd> | Take fullscreen screenshot. Supports multiple monitors |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>c</kbd> | Close focused window |
| <kbd>Win</kbd>+<kbd>Space</kbd> | Change workspace layout |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd> | Change back to default workspace layout |
| <kbd>Win</kbd>+<kbd>n</kbd> | Resize viewed windows to the correct size |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Left</kbd>        | Tab current focused window with the window to the left     |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Right</kbd> | Tab current focused window with the window to the right |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Up</kbd> | Tab current focused window with the window above |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Down</kbd> | Tab current focused window with the window below |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>u</kbd> | Ungroup the current tabbed windows |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>m</kbd> | Merge all windows in the current workspace to one tabbed window |
| <kbd>Win</kbd>+<kbd>Tab</kbd> | Focus next tabbed window |
| <kbd>Win</kbd>+<kbd>Left</kbd> | Focus on window to the Left |
| <kbd>Win</kbd>+<kbd>Right</kbd> | Focus on window to the Right |
| <kbd>Win</kbd>+<kbd>Up</kbd> | Focus on window above |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Left</kbd> | Swap adjacent window to the left |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Right</kbd> | Swap adjacent window to the right |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Up</kbd> | Swap adjacent window above |
| <kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Down</kbd> | Swap adjacent window below |
| <kbd>Win</kbd>+<kbd>m</kbd> | Focus master window |
| <kbd>Win</kbd>+<kbd>Return</kbd> | Swap focused window with master window |
| <kbd>Win</kbd>+<kbd>h</kbd> | Shrink master window area |
| <kbd>Win</kbd>+<kbd>l</kbd> | Expand master window area |
| <kbd>Win</kbd>+<kbd>t</kbd> | Push floating window back into tiling |
| <kbd>Win</kbd>+<kbd>,</kbd> | Increment number of windows in master window area |
| <kbd>Win</kbd>+<kbd>.</kbd> | Decrement number of windows in master window area |
| <kbd>Win</kbd>+<kbd>q</kbd> | Restart xmonad. This reloads xmonad configuration, does not logout |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>q</kbd> | Quit xmonad and logout |
| <kbd>Win</kbd>+<kbd>[1-9]</kbd> | Switch to workspace 1-9, depending on which number was pressed |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>[1-9]</kbd> | Send focused window to workspace 1-9 |
| <kbd>Win</kbd>+<kbd>w</kbd> | Focus left-most monitor (Xinerama screen 1) |
| <kbd>Win</kbd>+<kbd>e</kbd> | Focus center-most monitor (Xinerama screen 2) |
| <kbd>Win</kbd>+<kbd>r</kbd> | Focus right-most monitor (Xinerama screen 3) |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>w</kbd> | Send focused window to workspace on left-most monitor |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>e</kbd> | Send focused window to workspace on center-most monitor |
| <kbd>Win</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> | Send focused window to workspace on right-most monitor |
| <kbd>Win</kbd>+<kbd>Left Mouse Drag</kbd> | Drag focused window out of tiling |
| <kbd>Win</kbd>+<kbd>Right Mouse Drag</kbd> | Resize focused window, bring out of tiling if needed |
| <kbd>Win</kbd>+<kbd>Right Mouse Drag</kbd> | Resize focused window, bring out of tiling if needed |


## Personalizing or modifying xmonad-config

Once cloned, xmonad-config is laid out as follows.

All xmonad configuration is in ~/.xmonad/xmonad.hs.  This includes
things like key bindings, colors, layouts, etc.  You may need to have some
basic understanding of [Haskell](https://wiki.haskell.org/Haskell)
in order to modify this file, but most people have no problems.

Most of the xmobar configuration is in ~/.xmonad/xmobar.hs.

All scripts are in ~/.xmonad/bin/.  Scripts are provided to do things like
take screenshots, start the system tray, start dmenu, or fix your multi-head
layout after a fullscreen application may have turned off one of the screens. 

Colors set in the xmobar config and dmenu script are meant to coincide with the
[IR_Black terminal and vim themes](http://toddwerth.com/2008/04/30/the-last-vim-color-scheme-youll-ever-need/).
