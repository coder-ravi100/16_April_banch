#include<stdio.h>
//without return type and  without argument
void sub();
void sub()
{
	int num1,num2;
	printf("Enter the value  in num1 =");
	scanf("%d",&num1);	
	printf("Enter the value  in num2 =");
	scanf("%d",&num2);
	 int  ans = num1 - num2;
	 printf("\n The subtraction is = %d",ans);
}
int main()
{
	sub();
	return 0;
}
/*#include <stdio.h>

void greet() {   // no argument, no return
    printf("Hello, PM sahab!\n");
}

int main() {
    greet();
    return 0;
}*/
