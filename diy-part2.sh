find feeds/passwall_packages -name "Makefile" | xargs grep -l "golang-package.mk" | while read -r mkfile; do
    if ! grep -q "define Build/Prepare" "$mkfile"; then
        sed -i "/golang-package.mk/a define Build/Prepare\n\t\$(call Build/Prepare/Default)\n\tsed -i 's/go 1.24/go 1.23/g' \$(PKG_BUILD_DIR)/go.mod\nendef" "$mkfile"
    fi
done
