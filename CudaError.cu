#include "CudaError.h"
#include <iostream>

void cudaerror::CheckFatal(cudaError_t error) {
	if (error != cudaSuccess) {
		std::cerr << cudaGetErrorString(error) << " in " << __FILE__ << " at line " << __LINE__ << std::endl;
		exit(EXIT_FAILURE);
	}
}

void cudaerror::CheckNonFatal(cudaError_t error) {
	if (error != cudaSuccess) {
		std::cout << cudaGetErrorString(error) << " in " << __FILE__ << " at line " << __LINE__ << std::endl;
	}
}
