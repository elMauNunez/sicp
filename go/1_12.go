package main

import (
	"fmt"
)

func pascal(row, col int) int {
  if col == 0 || row == col {
    return 1
  }

  return pascal(row-1, col-1) + pascal(row-1, col)
}

func main() {
	fmt.Println(pascal(3, 1))
}

