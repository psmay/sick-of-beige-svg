#!/bin/sh

rm -rf build
mkdir -p build

xf () {
	WIDTH=$1
	HEIGHT=$2
	MODEL="dp$WIDTH$HEIGHT"
	xsltproc --param width $WIDTH --param height $HEIGHT dp.xsl empty.xml > build/$MODEL.svg
}

# golden rectangle
xf 50 31
xf 60 37
xf 70 43
xf 80 49
xf 90 56
xf 100 62

# freeware eagle max rectangle
xf 100 80

# square
xf 30 30
xf 40 40
xf 50 50
xf 60 60
xf 70 70
xf 80 80

