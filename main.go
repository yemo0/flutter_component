package main

import (
	"fmt"
	"os"
)

var listFile = []string{}

func check(e error) {
	if e != nil {
		panic(e)
	}
}

func main() {
	var path string = "./lib/widgets/"
	var outPut string = "./assets/widgets/"
	copyDir(path, outPut)

	fmt.Println(listFile)
}

func copyFile(path, outPut string) {
	listFile = append(listFile, path)

	byte, err := os.ReadFile(path)
	check(err)

	os.WriteFile(outPut, byte, 0644)
}

func copyDir(path, outPut string) {
	fs, err := os.ReadDir(path)
	check(err)

	os.Mkdir(outPut, 0755)

	for _, f := range fs {
		if f.IsDir() {
			copyDir(path+f.Name()+"/", outPut+f.Name()+"/")
		} else {
			copyFile(path+f.Name(), outPut+f.Name())
		}
	}
}
