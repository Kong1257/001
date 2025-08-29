#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
chmod -R 755 ./package/luci-app-adguardhome/*
git clone https://github.com/SunBK201/UA3F.git package/UA3F
chmod -R 755 ./package/UA3F/*
git clone https://github.com/CHN-beta/rkp-ipid.git package/rkp-ipid
chmod -R 755 ./package/rkp-ipid/*
git clone https://github.com/linkease/istore.git package/istore
chmod -R 755 ./package/istore/*
git clone https://github.com/Toolcen/luci-app-sms-tool.git package/luci-app-sms-tool
chmod -R 755 ./package/luci-app-sms-tool/*
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
chmod -R 755 ./package/mentohust/*
