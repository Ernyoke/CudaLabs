/*
 * Lab2AddMatrices.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#include "Lab2AddMatrices.h"
#include "../../Utilities.h"
#include <cuda.h>

Lab2_AddMatrices::Lab2_AddMatrices(int *a, int *b, unsigned n, unsigned m) :
		h_a(a), h_b(b), n(n), m(m) {
}

Lab2_AddMatrices::~Lab2_AddMatrices() {
	// TODO Auto-generated destructor stub
}

__global__ void add(int *d_a, const int *d_b) {
	d_a[blockDim.x * blockIdx.x + threadIdx.x] += d_b[blockDim.x * blockIdx.x
			+ threadIdx.x];
}

void Lab2_AddMatrices::Dump() {
	int N = n * m;
	int *d_a = NULL;
	int *d_b = NULL;

	cudaMalloc((void**) &d_a, sizeof(int) * N);
	cudaMalloc((void**) &d_b, sizeof(int) * N);

	cudaMemcpy(d_a, h_a, sizeof(int) * N, cudaMemcpyHostToDevice);
	cudaMemcpy(d_b, h_b, sizeof(int) * N, cudaMemcpyHostToDevice);

	add<<<n, m>>>(d_a, d_b);

	cudaMemcpy(h_a, d_a, sizeof(int) * N, cudaMemcpyDeviceToHost);

	utilities::PrintVector(h_a, N);

	cudaFree(d_a);
	cudaFree(d_b);
}

