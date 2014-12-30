CONFIG+= release static rtti no_plugin_manifest qpa
host_build {
    QT_ARCH = x86_64
    QT_TARGET_ARCH = x86_64
} else {
    QT_ARCH = x86_64
}
QT_CONFIG += minimal-config small-config medium-config large-config full-config release c++11 static system-zlib no-gif no-jpeg png system-png accessibility openssl native-gestures qpa iconv concurrent
#versioning 
QT_VERSION = 5.3.2
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 3
QT_PATCH_VERSION = 2
QT_DEFAULT_QPA_PLUGIN = qwindows
