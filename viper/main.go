package main

import (
	"fmt"
	"github.com/spf13/viper"
	"os"
)

func main() {
	viper.SetConfigName("config")
	fmt.Printf("hello world %s %s\n", os.Args[0], os.Args[1])
}
