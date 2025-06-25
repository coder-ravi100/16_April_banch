#include<stdio.h>
//without Return type and  With Argument
void multi(int n1,int n2);

void multi(int n1,int n2)
{
int ans = n1 * n2;
printf("\n the multiplication = %d",ans);	
}
int main()
{
	int num1,num2;
	printf("\n  Enter the value in num1 =");
	scanf("%d",&num1);
	printf("\n  Enter the value in num2 =");
	scanf("%d",&num2);
	multi(num1,num2);
	return 0;
}

/*#include <stdio.h>

void square(int num) {   // argument: num | no return
    printf("Square is %d\n", num * num);
}

int main() {
    square(6);  // input diya
    return 0;
}*/
