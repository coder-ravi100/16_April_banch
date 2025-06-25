/*Yeh code user-define size ka array banata hai usme element inputs karata hai
aur phir unhe ek line  mein  print  karta*/
#include<stdio.h>
int main()
{
	int store,a[100],i;
	printf("\n Enter the Store of  Array ="); //yeh bata hai ki kitni size deni hai  
	scanf("%d",&store);//fir store karke size dega
	for(i=0;i<store;i++)
	{
		printf("\n Enter the Element in a[%d]=",i);//"a[%d]=",i yeh (i) ki value ko user se lega  
		scanf("%d",&a[i]);//ye a[i] iss me store karega
	}
	for(i=0;i<store;i++)
	{
		printf("%d",a[i]);//yeh store ki gai value ko print karta 
	}
	return 0;
}
