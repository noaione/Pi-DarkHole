#!/bin/bash
echo "Backing up files that will be patched..."
cp admin/img/boxed-bg.jpg admin/img/boxed-bg.jpg.backup
cp admin/network.php admin/network.php.backup
cp admin/scripts/pi-hole/php/header.php admin/scripts/pi-hole/php/header.php.backup
cp admin/style/pi-hole.css admin/style/pi-hole.css.backup
cp admin/style/vendor/skin-blue.min.css admin/style/vendor/skin-blue.min.css.backup
cp admin/style/vendor/AdminLTE.min.css admin/style/vendor/AdminLTE.min.css.backup
cp admin/style/vendor/dataTables.bootstrap.min.css admin/style/vendor/dataTables.bootstrap.min.css.backup
cp admin/style/vendor/daterangepicker.css admin/style/vendor/daterangepicker.css.backup
echo "Done backing up!"

while true; do
    read -p "Install Theme? (Y/n): " yn
    case $yn in
        [Yy]* ) 
	    git clone https://github.com/noaione/Pi-DarkHole.git pidarkhole-src
            rm -f admin/style/vendor/AdminLTE.min.css
            rm -f admin/style/vendor/skin-blue.min.css
            rm -f admin/style/vendor/daterangepicker.css
            rm -f admin/style/vendor/dataTables.bootstrap.min.css
            rm -f admin/style/pi-hole.css
            rm -f admin/scripts/pi-hole/php/header.php
            rm -f admin/network.php
            rm -f admin/img/boxed-bg.jpg
            cp pidarkhole-src/src/img/boxed-bg.jpg admin/img/boxed-bg.jpg
            cp pidarkhole-src/src/network.php admin/network.php
            cp pidarkhole-src/src/scripts/pi-hole/php/header.php admin/scripts/pi-hole/php/header.php
            cp pidarkhole-src/src/style/pi-hole.css admin/style/pi-hole.css
            cp pidarkhole-src/src/style/vendor/skin-blue.min.css admin/style/vendor/skin-blue.min.css
            cp pidarkhole-src/src/style/vendor/AdminLTE.min.css admin/style/vendor/AdminLTE.min.css
            cp pidarkhole-src/src/style/vendor/dataTables.bootstrap.min.css admin/style/vendor/dataTables.bootstrap.min.css
            cp pidarkhole-src/src/style/vendor/daterangepicker.css admin/style/vendor/daterangepicker.css
	    rm -rf pidarkhole-src/
			break;;
        [Nn]* ) break;;
        * ) echo "Please answer Yes (y) or No (n).";;
    esac
done
echo "All done!"