package main

import (
	"fmt"
)

func f(n int) int {
	var a, b, c = 2, 1, 0

	for ; n >= 3; n-- {
		a, b, c = a+2*b+3*c, a, b
	}

	return a
}

func main() {
	fmt.Println(f(6))
}

