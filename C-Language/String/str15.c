#include<stdio.h>
int compare(char str1[],char str2[])
{
	int i,flag=1;
	for(i=0;str1[i]!='\0';i++)
	{
		if(str1[i] != str2[i])
		{
			flag=0;
			break;
		}
	}
	return flag;
}
int main()
{
	char str1[100],str2[100];
	printf("\n Enter the value in str1 = ");
	gets(str1);
	printf("\n Enter the value in str2 = ");
	gets(str2);
	
	printf("\n Original value of str1 = %s",str1);
	printf("\n Original Value of str2 = %s",str2);
	
	int result = compare(str1,str2);
	if(result == 1)
	{
		printf("\n Both the string are equal");
	}
	else
	{
		printf("\n Both the string are not equal");
	}
	return 0;
}
