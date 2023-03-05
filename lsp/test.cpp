// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in C++.
#include <iostream>
using namespace std;

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
  cout << "Hello World!\n";

  cout << "Fibonacci sequence using recursion in C++:\n";
  Fibonacci fibonacci = *new Fibonacci();
  for (int i = 0; i <= 10; i++) {
    printf("%d ", fibonacci.sequence(i));
  }
  cout << "\n";
  return 0;
}
