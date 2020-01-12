#! /bin/sh
LOO=./result.sh
ORG_DIR=~/HD_pgm/
for IMG in `ls $ORG_DIR*.pgm`
do
	$LOO $IMG
done
