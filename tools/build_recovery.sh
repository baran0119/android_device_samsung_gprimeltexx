DEVICE=gprimeltexx
TYPE=eng

. build/envsetup.sh

rm -fr out2
OUT_DIR=$(pwd)/out2 TW=y lunch cm_${DEVICE}-${TYPE}
#time OUT_DIR=$(pwd)/out2 TW=y make clean

time OUT_DIR=$(pwd)/out2 TW=y make -j4 recoveryimage
