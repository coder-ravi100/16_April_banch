#include<stdio.h>
#include<string.h>
int main()
{
	char str1[100],str2[100];
	printf("\n Enter the value str1 =");
	gets(str1);

	printf("\n Enter the value str2 =");
	gets(str2);
	
	printf("\n Original Value  of str1 = %s",str1);
	printf("\n Original Value  of str2 = %s",str2);
	
	int result = strcmp(str1,str2);
	
	if(result == 0)
	{
		printf("\n Both the string are equal");
	}
	else
	{
		printf("\n Both the string are different");	
	}
	
return 0;	
}
