#include <stdio.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

  if (scanf("%d", &number) == 1) {
    	result = fibonacci(number);   
  	printf("The fibonacci sequence at %d is: %d\n", number,result);
    } else {
        printf("failed to read integer.\n");
    }
	return 1;
}
