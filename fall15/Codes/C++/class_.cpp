//Class demonstration in c++

#include <iostream>

//class is an user-defined data-type
class MITstudent {
	public:
	char const *name;
	int studentID;

};
using namespace std;

//Instance is an occurence of class
int main(){

	MITstudent s1;
	MITstudent s2;

	s1.name = "Abhsi";
	s1.studentID = 468163541;
	s2.name = "pafas";
	s2.studentID = 8;
	cout << s2.name<<"\n";
	
	return 0;
}
