#!/bin/sh
#X11 install
ymp repo --update --allow-oem --ignore-gpg
ymp it xinit xorg-server xterm elogind freetype xauth xkbcomp xkeyboard-config @x11.drivers --no-emerge --allow-oem
sed -i "s/#USER/USER/g" /etc/conf.d/xinit
rc-update add elogind
rc-update add eudev
ymp clean --allow-oem
exit 0
