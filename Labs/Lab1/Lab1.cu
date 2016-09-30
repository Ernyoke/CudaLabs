/*
 * Lab1.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#include "Lab1.h"
#include <cuda.h>
#include <iostream>

Lab1::Lab1() {
	// TODO Auto-generated constructor stub

}

Lab1::~Lab1() {
	// TODO Auto-generated destructor stub
}

void Lab1::Dump() {
	cudaGetDeviceCount(&deviceCount);
	std::cout << "Number of CUDA devices:" << deviceCount << std:: endl;

	for (unsigned i = 0; i < deviceCount; ++i) {
		cudaDeviceProp deviceProp;
		cudaGetDeviceProperties(&deviceProp, i);

		std::cout << "Device name:" << deviceProp.name << std::endl;
		std::cout << "Total global memory: " << deviceProp.totalGlobalMem / 1024 / 1024 << " MB" << std::endl;
		std::cout << "Shared memory per block: " << deviceProp.sharedMemPerBlock / 1024 << " KB" << std::endl;
		std::cout << "Max threads per block: " << deviceProp.maxThreadsPerBlock << std::endl;
		std::cout << "Clock Rate: " << deviceProp.clockRate << " KHz" << std::endl;
		std::cout << "Maximum grid size: " << deviceProp.maxGridSize[0] << " " << deviceProp.maxGridSize[1] << " " << deviceProp.maxGridSize[2] << " " << std::endl;

	}
}

