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
	
	strcat(str1,str2);
	
	printf("\n Value of str1 after using concate function = %s",str1);
	printf("\n Value of str2 after using concate function = %s",str2);
return 0;	
}
