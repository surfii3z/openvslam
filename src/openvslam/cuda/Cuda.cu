#include <helper_cuda.h>
#include "openvslam/cuda/Cuda.hpp"
namespace openvslam { namespace cuda {
  void deviceSynchronize() {
    checkCudaErrors( cudaDeviceSynchronize() );
  }
} }
