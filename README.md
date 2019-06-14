# Pi-DarkHole
Another dark mode theme for Pi-Hole AdminLTE Dashboard

Inspired from [lkd70 PiHole-Dark](https://github.com/lkd70/PiHole-Dark/blob/master/README.md)

![Screenshot](https://puu.sh/CA4rg/ad54052dd5.png)

----------

## Installation

1. Make sure you're root or in the sudoers file
2. Type: `cd /var/www/html`
3. Type: `sudo wget https://raw.githubusercontent.com/noaione/Pi-DarkHole/master/install.sh`
4. Type: `chmod +x install.sh`
5. Type: `./install.sh`
6. Follow the instructions

----------

## Uninstall

1. Go to: `/var/www/html/admin`
2. Type: `git reset --hard`

## Sidenote
- This file not only modifies the `.css` but also some `.php` files and `.js`
- Background are also changed to patterned "grunge" background
- If the install scripts doesn't works, copy everything from `src` folder to `/var/www/html/admin`
- This repo are based by my stylus theme [here](https://github.com/noaione/stylus-theme#pi-darkhole-pi-hole-adminlte-dark-mode)
- Please open a [new issue](https://github.com/noaione/Pi-DarkHole/issues/new) if there's something I missed

Licensed with MIT License.