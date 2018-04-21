# Conkit

CLI tool for managing conky themes.  
It also configures conky to autostart with specified theme. Themes need to be present in themes folder and each theme should have a conky_start.sh file.

## Installation

```
git clone https://github.com/ujjwal96/conkit.git "${HOME}/.conkit"
cd ~/.conkit
./init.sh
```

## Usage

`$ conkit <theme_name>`

## Themes

*  `equalizer`
  ![ `equalizer`](https://github.com/ujjwal96/conkit/blob/master/themes/equalizer/Screenshot.png)

* `dial`
  ![`dial`](https://github.com/ujjwal96/conkit/blob/master/themes/dial/Screenshot.png)

## Uninstallation

```
rm -rf ~/.conkit
rm -f ~/.config/autostart/conkit.desktop
```

### Credits
Thanks to [kralis-dm](https://kralis-dm.deviantart.com/art/Debian-Xfce-Conky-555754655) for original scripts.
