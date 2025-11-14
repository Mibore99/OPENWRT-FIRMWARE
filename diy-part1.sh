echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >>feeds.conf.default
echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5' >>feeds.conf.default
sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.82.0/g' feeds/packages/lang/rust/Makefile
