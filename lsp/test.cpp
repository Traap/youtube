// Fibonacci sequence done with C++.
class Fibonacci {
public:
  int sequence(int n) {
    if (n <= 1) {
      return n;
    }
    return sequence(n - 1) + sequence(n - 2);
  }
};

#include <iostream>
int main(int argc, char *argv[]) {

  // Shoutout to Brian Kernighan
  std::cout << "Hello World!";

  // Calculate Fibonacci sequnce and ehco results.
  Fibonacci fibonacci = *new Fibonacci();
  int answer = fibonacci.sequence(9);
  std::cout << "Fibonacci sequence value: " << answer;

  // Exit gracefully.
  return 0;
}
