package main

import "fmt"

const (
	arraySize = 100000
	repeat    = 100000
)

func main() {
	var testArray = make([]float64, arraySize)
	var sum float64 = 0.0
	for i := 0; i < arraySize; i++ {
		testArray[i] = float64(i)
	}
	for i := 0; i < repeat; i++ {
		for j := 0; j < arraySize; j++ {
			sum += testArray[(i+j)%arraySize]
		}
	}
	fmt.Printf("%E\n", sum)
}
