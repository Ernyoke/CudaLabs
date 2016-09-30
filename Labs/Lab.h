/*
 * Lab.h
 *
 *  Created on: Sep 30, 2016
 *      Author: ervin
 */

#ifndef LAB_H_
#define LAB_H_

class Lab {
public:
	Lab();
	virtual ~Lab();

	virtual void Dump() = 0;
};

#endif /* LAB_H_ */
