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
# 相关依赖配置在config中使能使用,具体查看以来中的Makefile
# CONFIG_PACKAGE_luci-app-ssr-plus=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Simple_Obfs is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_Plugin is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray is not set
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 直接添加插件，git clone会直接在package下克隆
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
