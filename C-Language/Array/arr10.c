#include<stdio.h>
int main()
{
	int a[100],size,i,j;
	printf("\nEnter the size of an array = ");
	scanf("%d",&size);
	for(i=0;i<size;i++)
	{
		printf("\nEnter the element in a[%d] = ",i);
		scanf("%d",&a[i]);
	}
	printf("\nArray a = ");
	for(i=0;i<size;i++)
	{
		printf("%d ",a[i]);
	}
	for(i=0;i<size;i++)
	{
		for(j=i+1;j<size;j++)
		{
			if(a[i]>a[j])
			{
				int temp = a[i];
				a[i] = a[j];
				a[j] = temp;
			}
		}
	}
	printf("\nSorted array in ascending order = ");
	for(i=0;i<size;i++)
	{
		printf("%d ",a[i]);
	}
	printf("\nSorted array in descending order = ");
	for(i=size-1;i>=0;i--)
	{
		printf("%d ",a[i]);
	}
	printf("\nMinimum element = %d",a[0]);
	printf("\nMaximum element = %d",a[size-1]);
	return 0;
}
/*Pass 1:
i=0, j=1 ? 50 > 20 ? swap ? [20, 50, 10, 40, 30]  
j=2 ? 20 > 10 ? swap ? [10, 50, 20, 40, 30]  
j=3 ? 10 < 40 ? no swap  
j=4 ? 10 < 30 ? no swap

Pass 2:
i=1, j=2 ? 50 > 20 ? swap ? [10, 20, 50, 40, 30]  
j=3 ? 20 < 40 ? no swap  
j=4 ? 20 < 30 ? no swap

Pass 3:
i=2, j=3 ? 50 > 40 ? swap ? [10, 20, 40, 50, 30]  
j=4 ? 40 > 30 ? swap ? [10, 20, 30, 50, 40]

Pass 4:
i=3, j=4 ? 50 > 40 ? swap ? [10, 20, 30, 40, 50]

Final sorted array: [10, 20, 30, 40, 50]
*/
