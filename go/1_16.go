package main

import (
	"fmt"
)

func isEven(n int) bool {
	return n%2 == 0
}

func square(n int) int {
	return n * n
}

func expt(b, n int) int {
	var a = 1

	for n != 0 {
		if isEven(n) {
			b = square(b)
			n = n / 2
		} else {
			n = n - 1
			a = a * b
		}
	}

	return a
}

func main() {
	fmt.Println(expt(2, 10))
}
