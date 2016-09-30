/*
 * Lab2Transpose.h
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#ifndef LAB2TRANSPOSE_H_
#define LAB2TRANSPOSE_H_

#include "../Lab.h"

class Lab2_Transpose: public Lab {
public:
	Lab2_Transpose(int *a, unsigned n, unsigned m);
	virtual ~Lab2_Transpose();

	void Dump();

private:
	int *h_a;
	unsigned n;
	unsigned m;
};

#endif /* LAB2TRANSPOSE_H_ */
