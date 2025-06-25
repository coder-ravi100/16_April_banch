#include<stdio.h>
void lower(char str[])
{
	int i;
	for(i=0;str[i]!='\0';i++)
	{
		if(str[i]>='A' && str[i]<='Z')
		{
			str[i] = str[i] + 32;
		}
	}
	printf("\n String in lowercase = %s",str);
}
int main()
{
	char str1[100];
	printf("\n Enter the string =",str1);
	gets(str1);
	printf("\n Value of str1 = %s",str1);
	
	lower(str1);	
	return 0;
}
