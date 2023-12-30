// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in
// Typescipt.

let FIBONACCI_MAX = 35

function fibonacci(n) {
  if (n <= 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

console.log("Shoutout to Brian Kernighan: Hello World!");

console.log("Fibonacci sequence using recursion in Typescript:");
for (let i = 0; i <= FIBONACCI_MAX; i++) {
  console.log(i + ' : ' + fibonacci(i));
}
console.log('');
