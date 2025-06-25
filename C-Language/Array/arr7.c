#include<stdio.h>
int main()
{
	int a[100],b[100],ans[100];
	float c[100];
	int size,choice,i;
	printf("\n  Enter the size of an array =");
	scanf("%d",&size);
	printf("\n  Enter the elements in array a =");
	for(i=0;i<size;i++)
	{
		printf("\n Enter the elements in a[%d]  = ",i);
		scanf("%d",&a[i]);
	}
	printf("\n Enter the elements in array  b =");
	for(i=0;i<size;i++)
	{
		printf("\n Enter the elements in b[%d] =",i);
		scanf("%d",&b[i]);
	}
	up:
	printf("\n 1.Addition");
	printf("\n 2.Subtraction");
	printf("\n 3.Multiplication");
	printf("\n 4.Division");	
	printf("\n Enter your choice :");
	scanf("%d",&choice);
	
	switch(choice)
	{
	case 1:
			for(i=0;i<size;i++)
			ans[i] = a[i] + b[i];
	break;
	case 2:
			for(i=0;i<size;i++)
			ans[i] = a[i] - b[i];		
	break;
	case 3:
			for(i=0;i<size;i++)
			ans[i] = a[i] *  b[i];
	break;
	case 4:
			for(i=0;i<size;i++)
			ans[i] = (float)a[i] / (float)b[i];
	break;
	}
	printf("\n Array a =");
	for(i=0;i<size;i++)
	{
		printf("\n %d",a[i]);
	}
	printf("\n Array b =");
	for(i=0;i<size;i++)
	{
		printf("\n %d",b[i]);
	}
	if(choice == 4)
	{
		printf("\n  Array ans =");
		for(i=0;i<size;i++)
		{
			printf("\n  %.2f",c[i]);
		}
	}
	else
	{
		printf("\n Array ans =  ");
		for(i=0;i<size;i++)
		{
			printf("/n %d",ans[i]);
		}
	}
	char ch;
	printf("\n Press 'y' to continue or 'n' to Exit");
	scanf(" %c",&ch);
	if(ch == 'y' || ch == 'Y')
	{
		goto up;
	}
	return 0;
}
