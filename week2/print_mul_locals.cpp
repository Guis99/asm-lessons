#include <iostream>

extern "C" int mulLocals(int a, int b);
extern "C" double mulLocals_double(double a, double b);

int main(int argc, char* argv[]) {
	#ifdef dm
		double num1 = std::stod(argv[1]);
		double num2 = std::stod(argv[2]);
	
	        double x = mulLocals_double(num1, num2);
	#else	
		int num1 = std::stoi(argv[1]);
		int num2 = std::stoi(argv[2]);
	
	        int x = mulLocals(num1, num2);
	#endif
	
	std::cout << x << std::endl;
}
