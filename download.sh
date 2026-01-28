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
# https://bitbucket.org/canuda/canudax_lean/raw/e87bf725cc1e90347a3ddc05bb03eca1567b71fa/CanudaX.th

# Get thorns from master thornlist
./GetComponents --no-parallel --shallow $CANUDAXSPACE/CanudaX.th

cd Cactus
