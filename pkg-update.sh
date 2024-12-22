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

git clone https://github.com/lonecale/openwrt-custom-packages package/new/custom-packages

dirs=(smartdns luci-app-smartdns adguardhome luci-app-adguardhome luci-app-wechatpush luci-app-chatgpt-web luci-app-filemanager luci-app-autotimeset luci-app-ddns-go luci-app-partexp luci-app-netspeedtest luci-theme-kucat luci-app-advancedplus luci-app-netwizard lucky luci-app-lucky luci-app-netdata)

for dir in "${dirs[@]}"; do
  mv "package/new/custom-packages/$dir" "./"
done

rm -rf package/new/custom-packages
