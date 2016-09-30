/*
 * CudaError.h
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#ifndef CUDAERROR_H_
#define CUDAERROR_H_

#include <cuda.h>

namespace cudaerror {

void CheckFatal(cudaError_t error);
void CheckNonFatal(cudaError_t error);

}

#endif /* CUDAERROR_H_ */
