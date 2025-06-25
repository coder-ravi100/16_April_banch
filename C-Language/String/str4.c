#include<stdio.h>
int main()
{
	char str[100];
	printf("\n Enter the string =");
	fgets(str,sizeof(str),stdin);
	printf("\n Value of String = %s",str);
	return 0;
}
/*char str[10];
gets(str); // ? Agar user ne 20 characters type kiye toh crash ho sakta hai
fgets(str, 10, stdin); // ? Sirf 9 characters + '\0' lega
*/
