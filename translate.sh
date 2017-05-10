#!/bin/sh

DIR=data
MODEL_DIR=model
BEAMSIZE=12
AMUNMT=/work/local/tools/amunmt

DEVICE=0

# decode
$AMUNMT/build/bin/amun \
    -m $MODEL_DIR/model_new.npz \
    -s $DIR/corpus.bpe.de.json -t $DIR/corpus.bpe.en.json \
    -d 0 \
    -n \
    -b $BEAMSIZE \
    --cpu-threads 8 \
    < $DIR/newstest2013.bpe.small.de > output.amun.bpe