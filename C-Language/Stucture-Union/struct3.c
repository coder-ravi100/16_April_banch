#include<stdio.h>
struct student
{
	int id;
	char name[50];
	float percentage;
}s[100];
int main()
{
	int i,count;
	printf("\n Enter the count of students = ");
	scanf("%d",&count);
	for(i=0;i<count;i++)
	{
		printf("\n Enter the roll no =  ");
		scanf("%d",&s[i].id);
		printf("\n Enter the name = ");
		scanf("%s",&s[i].name);
		printf("\n Enter the percentage  = ");
		scanf("%f",&s[i].percentage);
	}//scanning  value
	for(i=0;i<count;i++)
	{
		printf("\n Id = %d",s[i].id);
		printf("\n Name = %s",s[i].name);
		printf("\n Percentage = %.2f",s[i].percentage);
	}//printing svalue
	return 0;
}
