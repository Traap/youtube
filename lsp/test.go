// Shoutout to Brian Kernighan and Fibonacci sequence using recursion in Go.
package main

import "fmt"

var FIBONACCI_MAX int = 35

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

func main() {
	fmt.Println("Shoutout to Brian Kernighan: Hello world!")

	fmt.Println("Fibonacci sequence using recursion in Go:")
	for i := 0; i <= FIBONACCI_MAX; i++ {
		fmt.Println(i, fibonacci(i))
	}
	fmt.Println()

}
