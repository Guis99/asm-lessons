#include <iostream>

extern "C" int getInt_changed(int a);

int main(int argc, char* argv[]) {
	int x = getInt_changed(std::stoi(argv[1]));
	std::cout << x << std::endl;
}
