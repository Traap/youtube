// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in
// Typescipt.

let FIBONACCI_MAX = 35

function fibonacci(n: number): number {
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

// What to expect form ECMAScript 2023 (ES14)
// https://www.makeuseof.com/ecmascript-2023-es14-what-to-expect/?newsletter_popup=1
// const result = [1, 2, 3, 4, 5]
//   |> ((aar) => aar.filter((n) => n % 2 === 0))
//   |> ((aar) => aar.map((n)) => n * 2))
//   |> ((aar) => aar.reduce((a, b) => a + b ));
// console.log(result); // Output: 12
