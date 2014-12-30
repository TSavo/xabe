QT_BUILD_PARTS += libs
QT_QCONFIG_PATH = 

host_build {
    QT_CPU_FEATURES.x86_64 =  cx16 mmx sse sse2 sse3
} else {
    QT_CPU_FEATURES.x86_64 =  cx16 mmx sse sse2 sse3
}
QT_COORD_TYPE += double
#Qt for Windows CE c-runtime deployment
QT_CE_C_RUNTIME = no
CONFIG += pcre release compile_examples sse2 sse3 ssse3 sse4_1 sse4_2 avx avx2 largefile
styles         += windows fusion windowsxp windowsvista
TMPPATH            = $$quote($$(INCLUDE))
QMAKE_INCDIR_POST += $$split(TMPPATH,";")
TMPPATH            = $$quote($$(LIB))
QMAKE_LIBDIR_POST += $$split(TMPPATH,";")
