#include "Utilities.h"
#include <iostream>

void utilities::PrintVector(const int *a, const unsigned size) {
	for (unsigned i = 0; i < size; ++i) {
		std::cout << a[i] << " ";
	}
	std::cout << std::endl;
}
