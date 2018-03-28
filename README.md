# xmonad-config

Configuration files for getting XMonad working with different desktop environments.

## Desktop managers

Choose right file for your desktop environment.

These files have been tested with following distros:

* Linux Mint 13.
* Fedora 15.

Don't forget to copy **xmonad.hs** file to your **~/.xmonad/** directory.

Each time you change **xmonad.hs** file, you should run following command:

    $ xmonad --recompile

In order to use **XMonad** with **MATE** you need to execute following commmand:

    $ mateconftool-2 -s /desktop/mate/session/required_components/windowmanager xmonad --type string

Instead of executing mentioned command, it's possible to create a startup shortcut with following command:

    $ /usr/bin/xmonad --replace

Each time you computer boots the command above will be executed and your default window manager will be **XMonad**

## Just window manager

If you want to use *xmonad* just as a window manager, then you should use files
on `plain` folder. There you'll find configuration for *xmonad + xmobar*.

`mod4` is `Alt` in these configuration files.

If you want to use notifications, then you can use `stalonetray`:

```
$ sudo yum install stalonetray
$ touch ~/.stalonetrayrc
$ stalonetray &
```

Configuration has been tested on the following operating systems:

* Fedora 27

### Installation

```
$ git clone https://github.com/bsnux/xmonad-config.git
$ mkdir ~/.xmonad
$ ln -s xmonad-config/plain/xmonad.hs ~/.xmonad/xmonad.hs
$ ln -s xmonad-config/plain/dot_xmobarrc ~/.xmobarrc  
```

## Cheatsheet

* `mod4 + q`: Restart xmonad
* `mod4 + shift + q`: Close xmonad
* `mod4 + shift + enter`: Launch new terminal
* `mod4 + 1`: Go to workspace 1
* `mod4 + shit + 2`: Move current window to workspace 2
* `mod4 + h`: Make right window bigger
* `mod4 + l`: Make left window bigger
* `mod4 + shift + j`: Switch windows
* `alt + tab`: Switch focus between windows in same workspace
* `mod4 + space`: Cycle between layouts
* `mod4 + shift + space`: Reset the layouts on the current workspace to default
* `mod4 + p`: Launch command (`dmenu` is required)
* `mod4 + b`: Hide status bar
* `mod-button1`: Set the window to floating mode and move by dragging
* `mod-button3`: Set the window to floating mode and resize by dragging

[Cheatsheet](http://www.haskell.org/haskellwiki/Image:Xmbindings.png)

[Useful guide](http://beginners-guide-to-xmonad.readthedocs.io/)
