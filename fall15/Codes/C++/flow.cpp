//Testing control flow in C++
#include <iostream>
using namespace std;

int main(){
	int x = 6;
	int y = 2;
	
	cout <<"Enter value of x\n"; 
	cin >> x;	
	cout <<"Enter value of y\n"; 
	cin >> y;	
	if (x>y)
		cout << "x is greater than y\n";
	else if (x < y)
		cout << "y is greater than x\n";
	else
		cout << "x is equal than y\n";
	return 0;
}
	
		
