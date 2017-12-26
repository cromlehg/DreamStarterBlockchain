#!/bin/bash
BUILD_DIR="build"
if [ ! -d "$BUILD_DIR" ]; then
  mkdir $BUIDL_DIR
fi
cd $BUILD_DIR
cmake ..
make -j4
cd ..
