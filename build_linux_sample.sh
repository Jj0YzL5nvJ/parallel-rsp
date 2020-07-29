#!/bin/sh

git clone --depth 1 https://github.com/mupen64plus/mupen64plus-core.git ../mupen64plus-core
mkdir -p build-linux
cd build-linux
#export CC=clang-8
#export CXX=clang++-8
cmake -DCMAKE_C_FLAGS=-fPIC -DCMAKE_BUILD_TYPE=Release -DPARALLEL_RSP_DEBUG_JIT=OFF ..
cmake --build . --parallel
cd ..
