# CUDA
# find_package(CUDA QUIET REQUIRED)
# set(CUDA_PROPAGATE_HOST_FLAGS OFF)
# SET(CUDA_HOST_COMPILER /usr/bin/g++)
# set(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} -std=c++11" )
# LIST(APPEND CUDA_NVCC_FLAGS "--compiler-options -fno-strict-aliasing -use_fast_math")

# Add sources
target_sources(${PROJECT_NAME}
               PRIVATE
               ${CMAKE_CURRENT_SOURCE_DIR}/Allocator.hpp
               ${CMAKE_CURRENT_SOURCE_DIR}/Cuda.hpp
               ${CMAKE_CURRENT_SOURCE_DIR}/Fast.hpp
               ${CMAKE_CURRENT_SOURCE_DIR}/Orb.hpp
               ${CMAKE_CURRENT_SOURCE_DIR}/Allocator_gpu.cu
               ${CMAKE_CURRENT_SOURCE_DIR}/Cuda.cu
               ${CMAKE_CURRENT_SOURCE_DIR}/Fast.cu
               ${CMAKE_CURRENT_SOURCE_DIR}/Orb.cu
               )

# # Install headers
file(GLOB HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/*.hpp")
install(FILES ${HEADERS}
        DESTINATION ${OPENVSLAM_INCLUDE_INSTALL_DIR}/cuda)
