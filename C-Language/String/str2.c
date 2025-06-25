#include<stdio.h>
int main()
{
	//Spacing In not strore this type
	char str[100];
	printf("\n Enter the String =");
	scanf("%s",str);//or
	//scanf(" %[^\n]", str);
	printf("\n Value of String = %s",str);
	

	return 0;
}
