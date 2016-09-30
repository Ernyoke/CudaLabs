/*
 * Lab1.h
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#ifndef LAB1_H_
#define LAB1_H_

#include "../Lab.h"

class Lab1: public Lab {
public:
	Lab1();
	virtual ~Lab1();

	void Dump();

private:
	int deviceCount;
};

#endif /* LAB1_H_ */
