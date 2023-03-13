// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C.
#include <stdio.h>

// Youtube: Integer overflow occurs at 47.
static int FIBONACCI_MAX = 35;

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

int main() {
  printf("Shoutout to Brian Kernighan: Hello World!\n");

  printf("Fibonacci sequence using recursion in C:\n");
  for (int i = 0; i <= FIBONACCI_MAX; i++) {
    printf("%d : %d \n", i, fibonacci(i));
  }
  printf("\n");
  return 0;
}
