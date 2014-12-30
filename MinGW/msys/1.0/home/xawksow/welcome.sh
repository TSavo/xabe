#!/bin/sh
ARCH="32"
SKIPDEP="0"
current_dir=$(pwd)
script_dir=$(dirname $0)

if [ $script_dir = '.' ]
then
script_dir="$current_dir"
fi
SCRIPTDIR=$script_dir

if [ "$OPENSSL_MINGW" == "mingw64" ]; then
	ARCH="64"
fi
printmenu() {
	printf "\033c"
	echo "########################################################################"
	echo "#                                                                      #"
	echo "#           Welcome to xawksow's automated build environment           #"
	echo "#                                                           ($ARCH bit)   #"
	echo "########################################################################"
	echo "#                                 Menu                                 #"
	echo "#  1. Build                                                            #"
	echo "#  2. Clean                                                            #"
	echo "#  3. Clean and Build                                                  #"
	echo "#  4. Git Clone Coin                                                   #"
	echo "#  5. Update Coin                                                      #"
	echo "#  6. Build Coin without dependencies                                  #" 
	echo "#  7. Exit                                                             #"
	echo "#                                                                      #"
	echo "########################################################################"
	cd "$SCRIPTDIR"
	read -s -n 1 menu
	if [ "$menu" == "1" ]; then
	echo "Starting to build everything"	
	source "./build.sh"	
	fi
	if [ "$menu" == "2" ]; then
	echo "Starting to clean everything"
	source "./clean.sh"
	cmd /c "${BUILDENVPATH}${ARCH}boost_clean.bat"
	cmd /c "${BUILDENVPATH}${ARCH}qt_clean.bat"
	fi
	if [ "$menu" == "3" ]; then
	echo "Starting to clean and build everything"
	cmd /c "${BUILDENVPATH}${ARCH}boost_clean.bat"
	cmd /c "${BUILDENVPATH}${ARCH}qt_clean.bat"
	cd "$SCRIPTDIR"
	source "./clean.sh"	
	cd "$SCRIPTDIR"
	source "./build.sh"
	fi
	if [ "$menu" == "4" ]; then
	cmd /c "${BUILDENVPATH}gitclone.bat"
	fi
	if [ "$menu" == "5" ]; then
	cmd /c "${BUILDENVPATH}gitpull.bat"
	fi
	if [ "$menu" == "6" ]; then
	SKIPDEP="1"
	source "./build.sh"
	fi
	if [ "$menu" == "7" ]; then
	echo "Bye Bye"
	exit
	else
	printmenu
	fi
}
printmenu

