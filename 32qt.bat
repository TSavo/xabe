SET PATH=%PATH%;%~dp0\mingw32\bin
SET QTMYPATH=%~dp0\MinGW\msys\1.0\home\xawksow\
set INCLUDE=%QTMYPATH%\deps\libpng-1.6.15;%QTMYPATH%\deps\openssl-1.0.1j\include
set LIB=%QTMYPATH%\deps\libpng-1.6.15\.libs;%QTMYPATH%\deps\openssl-1.0.1j

cd %QTMYPATH%\Qt\5.3.2

CALL configure.bat -release -opensource -confirm-license -static -make libs -no-sql-sqlite -no-opengl -system-zlib -qt-pcre -no-icu -no-gif -system-libpng -no-libjpeg -no-freetype -no-angle -no-vcproj -openssl -no-dbus -no-audio-backend -no-wmf-backend -no-qml-debug

mingw32-make

set PATH=%PATH%;%QTMYPATH%\Qt\5.3.2\bin

cd %QTMYPATH%\Qt\qttools-opensource-src-5.3.2

qmake qttools.pro

mingw32-make