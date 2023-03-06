// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C.
#include <stdio.h>

int fibonacci(int n) {
  if (n <= 1)
    return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

int main() {
  printf("Hello World!\n");

  printf("Fibonacci sequence using recursion in C:\n");
  for (int i = 0; i <= 10; i++) {
    printf("%d ", fibonacci(i));
  }
  printf("\n");
  return 0;
}
