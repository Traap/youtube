// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C++.
#include <iostream>
using namespace std;

static int FIBONACCI_MAX = 35;

class Fibonacci {
public:
  int sequence(int n) {
    if (n <= 1) {
      return n;
    }
    return sequence(n - 1) + sequence(n - 2);
  }
};

int main(int argc, char *argv[]) {
  cout << "Shoutout to Brian Kernighan: Hello World!\n";

  cout << "Fibonacci sequence using recursion in C++:\n";
  Fibonacci fibonacci = *new Fibonacci();
  for (int i = 0; i <= FIBONACCI_MAX; i++) {
    printf("%d : %d \n", i, fibonacci.sequence(i));
  }
  cout << "\n";
  return 0;
}
