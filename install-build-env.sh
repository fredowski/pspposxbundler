#!/bin/sh -xve

# Copyright (C) 2020 Free Software Foundation, Inc.
# Released under GNU General Public License, either version 3
# or any later option

macportstarfile=macports-1.3.0-1.tgz

# Download and install the macports build environment for pspp
pushd /opt/macports
curl -o $macportstarfile https://www.hs-augsburg.de/homes/beckmanf/pspp/$macportstarfile
tar -xzf $macportstarfile

cd macports-ports
git pull
git checkout pspp/1.3.0-1
popd
