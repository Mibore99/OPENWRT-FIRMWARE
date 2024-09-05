curl -L -o feeds/packages/lang/golang/golang/Makefile https://github.com/openwrt/packages/raw/master/lang/golang/golang/Makefile
sudo echo "/etc/uci-defaults/70-rootpt-resize" >> /etc/sysupgrade.conf
sudo echo "/etc/uci-defaults/80-rootfs-resize" >> /etc/sysupgrade.conf
