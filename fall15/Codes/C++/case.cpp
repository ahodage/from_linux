//
#include <iostream>
using namespace std;

int main() {

	int x = 6;
	cout <<"Enter value of x\n"; 
	cin >> x;	
	
	switch(x) {
		case 1:
			cout << "x is 1\n";
			break;
		case 2:
		case 3:
			cout << "x is 2 or 3\n";
			break;
		default:
			cout << "x is not 1, 2, or 3\n";
		}
	return 0;
} 
