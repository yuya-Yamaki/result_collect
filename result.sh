#! /bin/sh
QP=32
SAO=0
LEVEL=3
C=2.0
GAMMA=0.25
GAIN=0.125
TESTIMAGE=$1
TESTIMAGE=`basename $TESTIMAGE`
TASK=`basename $TESTIMAGE .pgm`"-q$QP-sao$SAO-c$C-gm$GAMMA-ga$GAIN-l$LEVEL"
LOG="./log/$TASK.log"

BDrate=`grep courves $LOG`
echo $BDrate | gawk '{print $8}' >> bd-rate.txt
