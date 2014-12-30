#!/bin/sh
if [ "$SKIPDEP" == "0" ]; then
	echo 'Aww you wanna build your dependencies? Alright, just ignore me, I can do that on my own. ;\\';

	echo "Building Boost now"
	cmd /c "${BUILDENVPATH}${ARCH}boost.bat"


	cd "$SCRIPTDIR/deps"

	source "$SCRIPTDIR/deps/build.sh"

	echo "Building QT now"
	cmd /c "${BUILDENVPATH}${ARCH}qt.bat"

fi

cd "$SCRIPTDIR/coin"

echo "Building now your coin.. Grab a coffee, this could take some time."

./autogen.sh

CPPFLAGS="-I$SCRIPTDIR/deps/db-4.8.30.NC/build_unix -I$SCRIPTDIR/deps/openssl-1.0.1j/include -I$SCRIPTDIR/deps -I$SCRIPTDIR/deps/protobuf-2.6.1/src -I$SCRIPTDIR/deps/libpng-1.6.15 -I$SCRIPTDIR/deps/qrencode-3.4.4" \
LDFLAGS="-L$SCRIPTDIR/deps/db-4.8.30.NC/build_unix -L$SCRIPTDIR/deps/openssl-1.0.1j -L$SCRIPTDIR/deps/miniupnpc -L$SCRIPTDIR/deps/protobuf-2.6.1/src/.libs -L$SCRIPTDIR/deps/libpng-1.6.15/.libs -L$SCRIPTDIR/deps/qrencode-3.4.4/.libs" \
BOOST_ROOT=$SCRIPTDIR/deps/boost_1_57_0 \
./configure --disable-upnp-default --disable-tests --with-qt-incdir=$SCRIPTDIR/Qt/5.3.2/include --with-qt-libdir=$SCRIPTDIR/Qt/5.3.2/lib --with-qt-plugindir=$SCRIPTDIR/Qt/5.3.2/plugins --with-qt-bindir=$SCRIPTDIR/Qt/5.3.2/bin --with-protoc-bindir=$SCRIPTDIR/deps/protobuf-2.6.1/src

mingw32-make -j4

cd "$SCRIPTDIR/coin/src/qt"
QTEXEPATH="-qt.exe"
for d in *.exe; do
 if [[ "$d" == *"$QTEXEPATH"* ]] 
	then
		strip "${d}"
		cp "${d}" "${BUILDENVPATH}/${d}"		
	fi
done
