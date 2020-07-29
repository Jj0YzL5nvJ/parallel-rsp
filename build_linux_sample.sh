#!/bin/sh

mkdir -p build-linux
cd build-linux
#export CC=clang-8
#export CXX=clang++-8
cmake -DCMAKE_C_FLAGS=-fPIC -DCMAKE_BUILD_TYPE=Release -DPARALLEL_RSP_DEBUG_JIT=OFF ..
cmake --build . --parallel
cd ..
