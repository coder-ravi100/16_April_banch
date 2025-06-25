/*user se array ka size aur elements input lo 
saare elememnts ka sum calculate karo array ke 
elements sum aur average print  karo average */
#include<stdio.h>
int main()
{
	int a[10],size,i,sum=0;
	printf("\n Enter the size of an array =");
	scanf("%d",&size);
	for(i=0;i<size;i++)
	{
		printf("\n Enter the an Elements in a[%d] =",i);
		scanf("%d",&a[i]);
		sum = sum + a[i];
	}
	printf("\n Elements  of an array");
	for(i=0;i<size;i++)
	{
		printf("\n %d",a[i]);
	}
	printf("\n Addition of all elements = %d",sum);
	
	printf("\n Average of  all elements = %.2f",(float)sum/size);
	return 0;
}
