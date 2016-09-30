#include <iostream>

#include "Labs/Lab1/Lab1.h"
#include "Labs/Lab2/Lab2ErrorHandling.h"
#include "Labs/Lab2/Lab2AddMatrices.h"
#include "Labs/Lab2/Lab2Transpose.h"

int* GenerateLinearData(unsigned size) {
	int *a = new int[size];
	for (unsigned i = 0; i < size; ++i) {
		a[i] = i;
	}

	return a;
}

int main() {

	/*
	Lab1 lab1;
	lab1.Dump();

	Lab2_ErrorHandling lab2Error;
	lab2Error.Dump();
	*/

	int n = 3;
	int m = 3;
	int *a = GenerateLinearData(n * m);
	int *b = GenerateLinearData(n * m);

	//Lab2_AddMatrices lab2Add(a, b, n, m);
	//lab2Add.Dump();

	Lab2_Transpose lab2T(a, n, m);
	lab2T.Dump();

	delete a, b;

	return 0;
}
