/*Yeh code array ko reverse karne ke liye koi modification nahi karta 
sirf reverse order mein print karta hai*/
#include<stdio.h>
int main()
{
	int size,a[100],i;
	printf("\n Enter the size of an Array ="); //usually 5 deta hoo
	scanf("%d",&size);//fir vahi value ko store karega
	for(i=0;i<size;i++)
	{
		printf("\n Enter the Element in a[%d]= ",i);//yeh statement di hue size ke hisab  se element print karta hai
		scanf("%d",&a[i]);//fir ye uss value ko array mein store karega
	}
	printf("\n Normal Sequence = ");//yeh normal vala sequence print karega
	for(i=0;i<size;i++)
	{
		printf("\n %d",a[i]);
	}
	printf("\n Reversed  Sequence = ");//yeh reverse mein print karega 
	for(i=size-1;i>=0;i--)//yaha thora drana hai yeh look ko oolta likhna hai
	{
		printf("\n %d",a[i]);
	}
	return 0;
}
