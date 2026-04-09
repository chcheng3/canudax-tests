#!/bin/bash

set -ex

export CANUDAXSPACE="$PWD"
export WORKSPACE="$PWD/../workspace"
mkdir -p "$WORKSPACE"
cd "$WORKSPACE"

# Check out Cactus
wget https://raw.githubusercontent.com/gridaphobe/CRL/master/GetComponents
chmod a+x GetComponents

# FIXME curl and wget are not working with Bitbucket raw thornlist in the container somehow
# I've manually added the thornlist to bypass the download
# https://bitbucket.org/canuda/canudax/raw/2afeeaf03ce2d79a8d3555b06bed1c95321ef49c/CanudaX.th

# Get thorns from master thornlist
./GetComponents --no-parallel --shallow $CANUDAXSPACE/CanudaX.th

cd Cactus
