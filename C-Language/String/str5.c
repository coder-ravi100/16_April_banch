#include<stdio.h>
#include<string.h>
int main()
{
	//length Function
	char str1[100],str2[100];
	printf("\n Enter the value in str1 =");
	gets(str1);
	printf("\n Enter the value in str2 =");
	gets(str2);
	
	printf("\n Original Value of str1 = %s",str1);
	printf("\n Original Value of str2 = %s",str2);
	
	int len = strlen(str1);
	printf("\n Length of str1 = %d",len);
	printf("\n Length of str2 = %d",strlen(str2));
	return  0;
}
