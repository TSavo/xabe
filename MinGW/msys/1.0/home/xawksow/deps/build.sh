#!/bin/sh
TEST=boost
cd "$SCRIPTDIR/deps/"
for d in */ ; do
	if [[ "$d" != *"$TEST"* ]] 
	then
		cd "$SCRIPTDIR/deps/${d}"		
		source "./build.sh";
	fi
done