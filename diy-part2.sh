if [ -f "feeds/helloworld/gn/Makefile" ]; then
    sed -i 's/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=HEAD/g' feeds/helloworld/gn/Makefile
fi
