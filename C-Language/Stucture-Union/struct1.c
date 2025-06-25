#include<stdio.h>
struct student 
{
	int roll;
	float percentage;
	char grade;
};
int main()
{
	int a;
	struct student s1;
	s1.roll=1;
	s1.percentage=99.99;
	s1.	grade='A';
	
	printf("\n Roll no is %d = ",s1.roll);
	printf("\n Percentage is %.2f",s1.percentage);
	printf("\n Grade is %c = ",s1.grade);
	return 0;
}
