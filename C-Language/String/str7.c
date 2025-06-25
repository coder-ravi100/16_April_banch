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
	
	strcpy(str1,str2);
	
	printf("\n The Value of str1 after using copy function = %s",str1);
	printf("\n The Value of str2 after using copy function = %s",str2);
	
	return 0;
}
