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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git  package/openwrt-small
#
git clone https://github.com/fw876/helloworld.git package/lean/helloworld

sed -i "s/DEVICE_PACKAGES := kmod-mt7603e kmod-mt7615d luci-app-mtwifi uboot-envtools/DEVICE_PACKAGES := kmod-mt7603 kmod-mt7615e wpad-openssl uboot-envtools/g"  ./target/linux/ramips/image/mt7621.mk
#修改redmi ac2100闭源驱动为开源驱动

#export GOPROXY=https://proxy.golang.org,direct
#export GOPROXY=https://goproxy.io,direct
