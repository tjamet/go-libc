package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Printf("hello world %s %s\n", os.Args[0], os.Args[1])
}
