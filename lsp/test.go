// Shoutout to Brian Kernighan
package main

import (
	"fmt"
	"math/big"
)

func main() {
	fmt.Println("Hello World!")

	F1 := big.NewInt(0)
	F2 := big.NewInt(1)

	for {
		F1.Add(F1, F2)
		F1, F2 = F2, F1
		fmt.Printf("%v\n", F1)
	}
}
