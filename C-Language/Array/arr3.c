/*yeh code user se 4 integer input leke  unhe array mein store karta hai
fir woh saare Elements ko ek ek  karke index bhi dikhata hai*/

#include<stdio.h>
int main()
{
	int arr[4],i;
	for(i=0;i<4;i++)
	{
		printf("\n Enter The  on arr[%d]",i);
		scanf("%d",&arr[i]);//arr[i] this is store array value
	}
	for(i=0;i<4;i++)
	{
		printf("\n value  at [%d] =%d  ",i,arr[i]); //i,arr[i] this is print the array value
	}
	return 0;
}
