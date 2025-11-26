rm -rf feeds/packages/lang/golang
git clone https://github.com/openwrt/packages.git -b master --depth 1 temp_packages
mv temp_packages/lang/golang feeds/packages/lang/
rm -rf temp_packages
./scripts/feeds install -a
