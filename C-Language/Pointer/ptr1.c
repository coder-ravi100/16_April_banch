#include<stdio.h>
int main()
{	
	int  a=27;
	int *ptr=&a;
//	int *ptr1=NULL;
	printf("\n Address of pointer %p",&ptr); //Address for pointer
	printf("\n Addres of a %p",&a); //Address for (a)
	printf("\n Address of a %p",ptr);  //Address for (a)
	printf("\n The Value of a %d",*ptr); //Value for (a)
	printf("\n The Value of a %d",a); //Value for (a)
//	printf("\n The Address of Some Garbage is %p",ptr1);
	return 0;
}

