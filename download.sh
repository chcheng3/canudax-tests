#!/bin/bash

set -ex

export CANUDAXSPACE="$PWD"
export WORKSPACE="$PWD/../workspace"
mkdir -p "$WORKSPACE"
cd "$WORKSPACE"

# Check out Cactus
wget https://raw.githubusercontent.com/gridaphobe/CRL/master/GetComponents
chmod a+x GetComponents

# Download thornlist on master branch
curl -L https://bitbucket.org/canuda/canudax_lean/raw/master/CanudaX.th -o CanudaX.th

# Get thorns from master thornlist
./GetComponents --no-parallel --shallow CanudaX.th

cd Cactus
