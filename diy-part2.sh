sed -i '/call BuildPackage/i define Build/Prepare\n\t$(call Build/Prepare/Default)\n\tsed -i "s/go 1.24/go 1.23/g" $(PKG_BUILD_DIR)/go.mod\nendef\n' feeds/passwall_packages/geoview/Makefile
