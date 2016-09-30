/*
 * Lab2Transpose.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#include "Lab2Transpose.h"
#include "../../Utilities.h"
#include <cuda.h>

Lab2_Transpose::Lab2_Transpose(int *a, unsigned n, unsigned m) :
		h_a(a), n(n), m(m) {
}

Lab2_Transpose::~Lab2_Transpose() {
	// TODO Auto-generated destructor stub
}

__global__ void transp(int *d_A, int *d_B) {
	d_A[blockDim.x * threadIdx.x + blockIdx.x] = d_B[blockDim.x * blockIdx.x
			+ threadIdx.x];
}

void Lab2_Transpose::Dump() {
	unsigned N = n * m;
	int *d_a = NULL;
	int *d_b = NULL;

	cudaMalloc((void**) &d_a, sizeof(int) * N);
	cudaMalloc((void**) &d_b, sizeof(int) * N);

	cudaMemcpy(d_b, h_a, sizeof(int) * N, cudaMemcpyHostToDevice);

	transp<<<3,3>>>(d_a, d_b);

	cudaMemcpy(h_a, d_a, sizeof(int) * N, cudaMemcpyDeviceToHost);

	cudaFree(d_a);
	cudaFree(d_b);

	utilities::PrintVector(h_a, N);
}
