/*
 * Lab2ErrorHandling.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#include "Lab2ErrorHandling.h"
#include "../../CudaError.h"
#include <cuda.h>

Lab2_ErrorHandling::Lab2_ErrorHandling() {
	// TODO Auto-generated constructor stub

}

Lab2_ErrorHandling::~Lab2_ErrorHandling() {
	// TODO Auto-generated destructor stub
}

void Lab2_ErrorHandling::Dump() {
	int *d_a = NULL;
	size_t size = 1024 * 1024 * 1024 * 10;
	cudaError_t err = cudaMalloc((void**)&d_a, size);
	cudaerror::CheckFatal(err);
}

