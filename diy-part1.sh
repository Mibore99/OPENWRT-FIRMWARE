sed -i -e 's|https://git.openwrt.org/feed/\(.*\)|https://github.com/openwrt/\1|g' \
       -e 's|https://git.openwrt.org/project/\(.*\)|https://github.com/openwrt/\1|g' \
       feeds.conf.default

echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >>feeds.conf.default
echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5' >>feeds.conf.default
