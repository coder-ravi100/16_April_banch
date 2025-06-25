#include<stdio.h>
//with return and with argument

int sum(int a,int b)//Definition
{
	return a+b;	
}
int main()
{
	int a,b,c;
	a=10;
	b=20;
	c=sum(a,b);
	printf("\n the sum is %d",c);
	return 0;
}

