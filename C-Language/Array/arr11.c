#include<stdio.h>
int main()
{
	int arr[2][3] = {{1,2,3},{4,5,6}};
	printf("%d",arr[1][0]);
	printf("\n%d",arr[1][1]);
	return 0;
}
/*Index:        0      1      2
           +------+------+------+
Row 0 -->  |  1   |  2   |  3   |
           +------+------+------+
Row 1 -->  |  4   |  5   |  6   |
           +------+------+------+
Index:        arr[0][0] to arr[1][2]
*/
