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
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky || { echo "Failed to clone luci-app-lucky"; exit 1; }
ls -R package/lucky

# 编译 lucky 和 luci-app-lucky IPK 包
echo "Compiling lucky IPK..."
make package/lucky/lucky/compile V=s || { echo "Failed to compile lucky"; exit 1; }

echo "Compiling luci-app-lucky IPK..."
make package/lucky/luci-app-lucky/compile V=s || { echo "Failed to compile luci-app-lucky"; exit 1; }
