#include<stdio.h>
int main()
{
	int a[100],size,i,element,flag=1;
	printf("\nEnter the size of an array = ");
	scanf("%d",&size);
	for(i=0;i<size;i++)
	{
		printf("\nEnter the element in a[%d] = ",i);
		scanf("%d",&a[i]);
	}
	printf("\nEnter the element = ");
	scanf("%d",&element);//3
	for(i=0;i<size;i++)
	{
		if(element == a[i])
		{
			printf("\n%d is present on index %d",element,i);
			flag=0;
		}
	}
	if(flag==1)
	{
		printf("\nElement is not present in an array");
	}
	return 0;
}
//Dublicate Elemenets is present why?
/*Program ka Logic
Array Size Input: Program user se array ka size input leta hai (max 100).
Array Elements Input: User se array ke elements ek-ek karke input liye jate hain.
Array Print: Input liye gaye array ke elements print kiye jate hain.
Element Search: User se ek element input liya jata hai jo array mein dhundna hai.
Search Logic:
Ek loop chalega jo array ke har element ko check karega.
Agar input element array ke kisi element se match karta hai, toh uska index print hoga aur flag ko 0 kiya jayega.
Agar element nahi milta, toh flag 1 rahega.
Result: Agar flag 1 hai, toh message print hoga ki element array mein nahi hai.
Dry Run
Maan lete hain user input deta hai:

Step 1: Array Size Input

User input: size = 5
Array X[100] banega, lekin sirf 5 elements ka use hoga.
Step 2: Array Elements Input

Loop chalega i = 0 se i = 4 tak.
User input deta hai:
X[0] = 10
X[1] = 20
X[2] = 30
X[3] = 40
X[4] = 50
Array ab hai: X = {10, 20, 30, 40, 50}
Step 3: Array Print

Loop chalega aur print karega: 10 20 30 40 50
Step 4: Element Search Input

User input deta hai: element = 30
Step 5: Search Loop

flag = 1 (initially)
Loop chalega:
i = 0: X[0] = 10, element = 30, match nahi, continue.
i = 1: X[1] = 20, element = 30, match nahi, continue.
i = 2: X[2] = 30, element = 30, match! Print: 30 is present on index 2, flag = 0.
i = 3: X[3] = 40, match nahi, continue.
i = 4: X[4] = 50, match nahi, continue.
Step 6: Flag Check

Loop khatam hone ke baad, flag = 0 hai, isliye "not present" wala message nahi print hoga.
Output:
Enter the size of Array Max[100]: 5
Enter the Element of X[0]: 10
Enter the Element of X[1]: 20
Enter the Element of X[2]: 30
Enter the Element of X[3]: 40
Enter the Element of X[4]: 50
10 20 30 40 50
Enter the Element of Array: 30
30 is present on index 2
Case 2: Agar element nahi milta

Maan lo user element = 60 input karta hai.
Loop chalega, koi match nahi hoga, flag = 1 rahega.
Output mein aayega: is not present element in array..
Note
Program mein ek chhoti si error hai:
printf("\n is not present element in array.. "); 
mein element ka value print nahi ho raha. 
Sahi karne ke liye isse aise likhna chahiye:c
printf("\n %d is not present element in array.. ", element);
flag ka use sahi hai, lekin agar element multiple times 
array mein ho toh har index print hoga, jo sahi hai as per program.*/
