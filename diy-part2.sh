sed -i '/call GoPackage\/Build\/Compile/i \	sed -i "s/go 1.25/go 1.23/g" $(PKG_BUILD_DIR)/go.mod' package/feeds/helloworld/v2ray-plugin/Makefile
