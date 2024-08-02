#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >>feeds.conf.default
echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5' >>feeds.conf.default
#rm -rf feeds/packages/lang/golang/golang/Makefile
curl -L -o feeds/packages/lang/golang/golang/Makefile https://github.com/openwrt/packages/raw/master/lang/golang/golang/Makefile
#svn co https://github.com/openwrt/packages/trunk/lang/golang/golang/Makefile feeds/packages/lang/golang/golang/Makefile
#svn co https://github.com/openwrt/packages/branches/openwrt-23.05/lang/golang feeds/packages/lang/golang
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#rm -rf package/boot/uboot-rockchip/patches
#svn export https://github.com/friendlyarm/friendlywrt/trunk/package/boot/uboot-rockchip/patches
#rm -rf target/linux/rockchip/patches-5.10
#svn export https://github.com/friendlyarm/friendlywrt/trunk/target/linux/rockchip/patches-5.10
#svn export https://github.com/openwrt/openwrt/trunk/target/linux/rockchip/patches-5.10/105-nanopi-r4s-sd-signalling.patch
