#!/bin/bash

PROJ=$1
TIMESTAMP=`date +%s`

echo "*****************************"
echo "          BUILDER"
echo "*****************************"
echo
echo ":::: PROJ: $PROJ"

if [[ -z $PROJ ]]; then
    echo "Variable $PROJ is not set. Abort."
    exit 1
fi

mkdir /data/_builds/build_${TIMESTAMP} || exit 1
cd /data/_builds/build_${TIMESTAMP}    || exit 1
git clone git@github.com:whiskey9net/warehouse.git  || exit 1
cd /data/_builds/build_${TIMESTAMP}/warehouse/$PROJ || exit 1
ls -l
./start
