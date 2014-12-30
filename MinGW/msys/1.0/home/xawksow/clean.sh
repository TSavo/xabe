#!/bin/sh
current_dir=$(pwd)
script_dir=$(dirname $0)

if [ $script_dir = '.' ]
then
script_dir="$current_dir"
fi
SCRIPTDIR=$script_dir

echo 'Alright, cleaning up your mess, that can take a few minutes..';
cd "$SCRIPTDIR/deps"

source "$SCRIPTDIR/deps/clean.sh"

cd "$SCRIPTDIR/coin"

echo "Still cleaning, now its time for your crispy coin."

make clean