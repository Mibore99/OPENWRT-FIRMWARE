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

sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libfuse-dev libglib2.0-dev libgmp3-dev \
libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libpython3-dev libreadline-dev \
libssl-dev libtool lrzsz mkisofs msmtp ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 \
python3-pyelftools python3-setuptools qemu-utils rsync scons squashfs-tools subversion swig texinfo \
uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev


# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >>feeds.conf.default
echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5' >>feeds.conf.default
#rm -rf feeds/packages/lang/golang/golang/Makefile
#curl -L -o feeds/packages/lang/golang/golang/Makefile https://github.com/openwrt/packages/raw/master/lang/golang/golang/Makefile
#svn co https://github.com/openwrt/packages/trunk/lang/golang/golang/Makefile feeds/packages/lang/golang/golang/Makefile
#svn co https://github.com/openwrt/packages/branches/openwrt-23.05/lang/golang feeds/packages/lang/golang
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#rm -rf package/boot/uboot-rockchip/patches
#svn export https://github.com/friendlyarm/friendlywrt/trunk/package/boot/uboot-rockchip/patches
#rm -rf target/linux/rockchip/patches-5.10
#svn export https://github.com/friendlyarm/friendlywrt/trunk/target/linux/rockchip/patches-5.10
#svn export https://github.com/openwrt/openwrt/trunk/target/linux/rockchip/patches-5.10/105-nanopi-r4s-sd-signalling.patch
