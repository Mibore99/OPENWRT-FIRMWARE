sed -i -e 's|https://git.openwrt.org/feed/\(.*\)|https://github.com/openwrt/\1|g' \
       -e 's|https://git.openwrt.org/project/\(.*\)|https://github.com/openwrt/\1|g' \
       feeds.conf.default

echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main' >>feeds.conf.default
