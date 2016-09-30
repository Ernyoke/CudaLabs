/*
 * Lab2AddMatrices.h
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#ifndef LAB2ADDMATRICES_H_
#define LAB2ADDMATRICES_H_

#include "../Lab.h"

class Lab2_AddMatrices : Lab{
public:
	Lab2_AddMatrices(int *a, int *b, unsigned n, unsigned m);
	virtual ~Lab2_AddMatrices();

	void Dump();

private:
	int *h_a;
	int *h_b;
	unsigned n;
	unsigned m;

};

#endif /* LAB2ADDMATRICES_H_ */
