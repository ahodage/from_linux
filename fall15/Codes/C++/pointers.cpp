//Refreshing pointers
#include <iostream>
using namespace std;

int main(){
	
	int x = 5;
	int *ptr = &x;
	int &y = x;
	cout << "Printing the pointer variable = "<< ptr<<"\n";
	cout << "Printing the pointer variable value = "<< *ptr<<"\n";
	cout << "Printing the pointer variable value = "<< &y<<"\n";

	return 0;
}
