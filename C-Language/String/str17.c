#include<stdio.h>
void upper(char str[])
{
	int i;
	for(i=0;str[i]!='\0';i++)
	{
		if(str[i]>='a' && str[i]<='z')
		{
			str[i] = str[i] - 32;
		}
	}
	printf("\n String in uppercase = %s",str);
}
int main()
{
	char str1[100];
	printf("\n Enter the string =");
	gets(str1);
	
	printf("\n value of str1 = %s",str1);
	
	upper(str1);
	return 0;	
}
