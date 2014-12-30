/* Licensed */
static const char qt_configure_licensee_str          [512 + 12] = "qt_lcnsuser=Open Source";
static const char qt_configure_licensed_products_str [512 + 12] = "qt_lcnsprod=OpenSource";

/* Build date */
static const char qt_configure_installation          [11  + 12] = "qt_instdate=2014-12-24";

static const char qt_configure_prefix_path_strs[][12 + 512] = {
#ifndef QT_BUILD_QMAKE
    "qt_prfxpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_docspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/doc",
    "qt_hdrspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/include",
    "qt_libspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/lib",
    "qt_lbexpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/bin",
    "qt_binspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/bin",
    "qt_plugpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/plugins",
    "qt_impspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/imports",
    "qt_qml2path=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/qml",
    "qt_adatpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_datapath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_trnspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/translations",
    "qt_xmplpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/examples",
    "qt_tstspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/tests",
#else
    "qt_prfxpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_docspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/doc",
    "qt_hdrspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/include",
    "qt_libspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/lib",
    "qt_lbexpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/bin",
    "qt_binspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/bin",
    "qt_plugpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/plugins",
    "qt_impspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/imports",
    "qt_qml2path=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/qml",
    "qt_adatpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_datapath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_trnspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/translations",
    "qt_xmplpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/examples",
    "qt_tstspath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/tests",
    "qt_ssrtpath=",
    "qt_hpfxpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_hbinpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/bin",
    "qt_hlibpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2/lib",
    "qt_hdatpath=G:/build-env/MinGW/msys/1.0/home/xawksow/Qt/5.3.2",
    "qt_targspec=win32-g++",
    "qt_hostspec=win32-g++",
#endif
};

#ifdef QT_BUILD_QMAKE
static const char qt_sysrootify_prefix[] = "qt_ssrtfpfx=y";
#endif

/* strlen( "qt_lcnsxxxx") == 12 */
#define QT_CONFIGURE_LICENSEE qt_configure_licensee_str + 12;
#define QT_CONFIGURE_LICENSED_PRODUCTS qt_configure_licensed_products_str + 12;
