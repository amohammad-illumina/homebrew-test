package main

import (
	"fmt"
	"runtime"
)

// version is overridden at build time via -ldflags "-X main.version=..."
var version = "dev"

func main() {
	fmt.Printf("hello from homebrew-test %s (%s/%s)\n", version, runtime.GOOS, runtime.GOARCH)
}
