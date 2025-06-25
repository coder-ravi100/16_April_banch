#include<stdio.h>
int main()
{
    int a[10][10], b[10][10], ans[10][10];
    int size, i, j, k, temp;
    
    
    printf("\nEnter the row and col number = ");
    scanf("%d", &size);
    
   
    printf("\nEnter the elements in array a = ");
    temp = 1;
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            printf("\nElement %d = ", temp++);
            scanf("%d", &a[i][j]);
        }
    }
    
   
    printf("\nEnter the elements in array b = ");
    temp = 1;
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            printf("\nElement %d = ", temp++);
            scanf("%d", &b[i][j]);
        }
    }
    
    
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            ans[i][j] = 0; // Initialize to 0
            for(k = 0; k < size; k++)
            {
                ans[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    
    
    printf("\nArray a := \n");
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
    
    
    printf("\nArray b := \n");
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            printf("%d ", b[i][j]);
        }
        printf("\n");
    }
    
    
    printf("\nArray ans (Multiplication) := \n");
    for(i = 0; i < size; i++)
    {
        for(j = 0; j < size; j++)
        {
            printf("%d ", ans[i][j]);
        }
        printf("\n");
    }
    
    return 0;
}
