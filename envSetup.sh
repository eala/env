set -euxo pipefail

# script to setup environment of build_tools
export PROJECT=build_tools
export PROJECT_ROOT=/Users/hank/Desktop/Hank/Projects/src/${PROJECT}
export TARGET=x86_64-apple-darwin17.5.0
export PREFIX=${PROJECT_ROOT}/tools
export TARGET_PREFIX=${PREFIX}/${TARGET}
export PATH=${PREFIX}/bin:${PATH}

# you may assign to native gnu gcc
export CC=clang
export CXX=clang++
export CXX_FOR_TARGET=clang
export CXX_FOR_TARGET=clang++

cd ${PROJECT_ROOT}

# build bin-utils
./configure --target=${TARGET} --prefix=${PREFIX}
make
make install
