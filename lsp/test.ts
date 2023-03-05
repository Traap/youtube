// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in
// Typescipt.
function fibonacci(n: number): number {
  if (n <= 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

console.log("Hello World!");
console.log("Fibonacci sequence use recursion in Typescript:");
for (let i = 0; i <= 10; i++) {
  process.stdout.write(fibonacci(i) + ' ');
}
console.log('');
