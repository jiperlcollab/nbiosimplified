#!/bin/bash

# exit at first failure
set -e

mkdir -p "$TOPAS_BUILD_PATH" "$TOPAS_INSTALL_PATH"
cd "$TOPAS_SOURCE_PATH" || exit
unzip Geant4Headers.zip > /dev/null
cmake -DTOPAS_EXTENSIONS_DIR="$NBIO_SOURCE_PATH" -DCMAKE_INSTALL_PREFIX="$TOPAS_INSTALL_PATH"
make
make install