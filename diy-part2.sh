find feeds/passwall_packages -name "Makefile" | xargs grep -l "golang-package.mk" | while read makefile; do
    if ! grep -q "define Build/Prepare" "$makefile"; then
        perl -i -pe 'print "define Build/Prepare\n\t\$(call Build/Prepare/Default)\n\tsed -i \"s/go 1.24/go 1.23/g\" \$(PKG_BUILD_DIR)/go.mod\nendef\n\n" if /^call BuildPackage/' "$makefile"
    fi
done
