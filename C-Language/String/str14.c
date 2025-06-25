#include<stdio.h>
void copy(char str1[],char str2[])
{
	int i;
	for(i=0;str2[i]!='\0';i++)
	{
		str1[i] = str2[i];
	}
	printf("\n value of str1 = %s",str1);
	printf("\n value of str2 = %s",str2);
}
int main()
{
	char str1[100],str2[100];
	printf("\n Enter the string = ");
	gets(str1);
	
	printf("\n Original value of str1 = %s",str1);
	printf("\n Original value of str2 = %s",str2);
	copy(str1,str2);
	
	return 0;
}
