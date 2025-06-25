#include<stdio.h>
//with return type and with Argument
int add(int n1,int n2);

int add(int n1,int n2)
{
	int sum;
	sum = n1 + n2;
	return sum;	
}
int main()
{
	int num1,num2;
	printf("\n Enter the value num1 =");
	scanf("%d",&num1);
	printf("\n Enter the value num2 =");
	scanf("%d",&num2);
	int sum = add(num1,num2);
	printf("\n Total addition %d",sum);
	return 0;
}

/*#include <stdio.h>

int add(int a, int b) {   // arguments: a, b | return type: int
    return a + b;         // return result
}

int main() {
    int sum = add(5, 3);  // passing 5 and 3 as arguments
    printf("Sum is %d\n", sum);
    return 0;
}*/
