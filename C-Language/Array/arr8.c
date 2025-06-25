#include<stdio.h>
int main()
{
	int a[100],size,i;
	printf("\nEnter the size of an array = ");
	scanf("%d",&size);
	for(i=0;i<size;i++)
	{
		printf("\nEnter the element in a[%d] = ",i);
		scanf("%d",&a[i]);
	}
	int index;
	up:
	printf("\nEnter the index number = ");
	scanf("%d",&index);//2
	if(index>=0 && index<=size)
	{
		printf("\n%d is present on %d index",a[index],index);
	}
	else
	{
		printf("\n%d is an invalid index number",index);
	}goto up;
	return 0;
}
/*Dry Run Steps:

Initialization:
int a[100] banaya, size mein 5 store hua.
i ko 0 se initialize kiya.
First For Loop (Input Elements):
i=0: a[0] = 10
i=1: a[1] = 20
i=2: a[2] = 30
i=3: a[3] = 40
i=4: a[4] = 50
Loop khatam, array ab hai: a = {10, 20, 30, 40, 50}
Second For Loop (Print Elements):
i=0: 10 print
i=1: 20 print
i=2: 30 print
i=3: 40 print
i=4: 50 print
Output: 10 20 30 40 50
Index Input:
index = 2 input liya.
Index Validation:
Condition check: index >= 0 && index <= size ? 2 >= 0 && 2 <= 5 ? true
if block execute hota hai:
printf("\n%d is present on %d index", a[2], 2);
a[2] = 30, to output: 30 is present on 2 index*/
