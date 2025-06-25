#include<stdio.h>
struct student
{
	int roll;
	char name[50];
	float percentage;
};
int main()
{
	struct student s1;
	s1.	roll = 100;
	printf("\n Enter the name =");
	scanf("%s",s1.name);
	s1.percentage = 98.65;
	
	printf("\n Roll no = %d",s1.roll);
	printf("\n Name = %s",s1.name);
	printf("\n Percentage = %f",s1.percentage);
}

