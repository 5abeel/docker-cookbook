#!/bin/bash

set -e

trap "echo TRAPed signal" HUP INT QUIT KILL TERM

ctest -V -S PARCI.cmake > ccontinuous_test.out 2>&1 &
#ctest -V -S FPARCI.cmake > fcontinuous_test.out 2>&1 &
#ctest -V -S CXX4I.cmake > cxx4continuous_test.out 2>&1 &

echo "[Continuous Integration Tests in Progress. Press Enter 3x to Exit]"
read
echo "[Continuous Integration Tests in Progress. Press Enter 2x to Exit]"
read
echo "[Continuous Integration Tests in Progress. Press Enter to Exit]"
read