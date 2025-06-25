#include<stdio.h>
#include<string.h>
int main()
{
	char str1[100],str2[100];
	printf("\n Enter the value in str1 =");
	gets(str1);
	printf("\n Enter the value in str2 =");
	gets(str2);
	
	printf("\n Original Value of str1 = %s",str1);
	printf("\n Original Value of str2 = %s",str2);
	
	strrev(str1);
	strrev(str2);
	
	printf("\n Reverse String = %s",str1);
	printf("\n Reverse String = %s",str2);
	return 0;
}
