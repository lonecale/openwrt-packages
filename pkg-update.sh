#!/bin/bash

# xray-core
bash xray-core/update.sh

# sing-box
mkdir -p sing-box/files
curl -Ls https://raw.githubusercontent.com/sbwml/openwrt_helloworld/v5/sing-box/files/sing-box.conf > sing-box/files/sing-box.conf
curl -Ls https://raw.githubusercontent.com/sbwml/openwrt_helloworld/v5/sing-box/files/sing-box.init > sing-box/files/sing-box.init
curl -Ls https://raw.githubusercontent.com/sbwml/openwrt_helloworld/v5/sing-box/Makefile > sing-box/Makefile

# v2ray-data
git clone https://github.com/pmkol/v2ray-geodata v2ray-geodata

# 下载 luci-app-lucky
echo "Cloning luci-app-lucky..."
git clone https://github.com/gdy666/luci-app-lucky package/luci-app-lucky || { echo "Failed to clone luci-app-lucky"; exit 1; }

# 下载 luci-app-autotimeset
echo "Cloning luci-app-autotimeset..."
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset || { echo "Failed to clone luci-app-autotimeset"; exit 1; }

# 下载 luci-app-advancedplus
echo "Cloning luci-app-advancedplus..."
git clone https://github.com/sirpdboy/luci-app-advancedplus package/luci-app-advancedplus || { echo "Failed to clone luci-app-advancedplus"; exit 1; }

# 下载 luci-app-ddns-go
echo "Cloning luci-app-ddns-go..."
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go || { echo "Failed to clone luci-app-ddns-go"; exit 1; }

# 下载 luci-app-partexp
echo "Cloning luci-app-partexp..."
git clone https://github.com/sirpdboy/luci-app-partexp.git package/luci-app-partexp || { echo "Failed to clone luci-app-partexp"; exit 1; }

# 下载 luci-app-netspeedtest
echo "Cloning luci-app-netspeedtest..."
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest || { echo "Failed to clone luci-app-netspeedtest"; exit 1; }

# 下载 luci-theme-kucat
echo "Cloning luci-theme-kucat..."
git clone https://github.com/sirpdboy/luci-theme-kucat package/luci-theme-kucat || { echo "Failed to clone luci-theme-kucat"; exit 1; }

# 下载 luci-app-eqosplu
# echo "Cloning luci-app-eqosplus..."
# git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus || { echo "Failed to clone luci-app-eqosplus"; exit 1; }

# 下载 luci-app-wizard
# echo "Cloning luci-app-wizard..."
# git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard || { echo "Failed to clone luci-app-wizard"; exit 1; }

# 下载 luci-app-parentcontrol
# echo "Cloning luci-app-parentcontrol..."
# git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol || { echo "Failed to clone luci-app-parentcontrol"; exit 1; }

