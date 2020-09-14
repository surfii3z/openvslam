echo "Building openVSLAM"
mkdir -p build
cd build

cmake \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.0 \
    -DBUILD_WITH_MARCH_NATIVE=ON \
    -DUSE_PANGOLIN_VIEWER=ON \
    -DUSE_SOCKET_PUBLISHER=OFF \
    -DUSE_STACK_TRACE_LOGGER=ON \
    -DBOW_FRAMEWORK=DBoW2 \
    -DBUILD_TESTS=OFF \
    ..

make -j8
