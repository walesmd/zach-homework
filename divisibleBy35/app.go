package main

//
// invoke with go run ./app.go 1 100
//

// import the libraries we need
import (
	"fmt"
	"os"
	"strconv"
)


// golang is a typed language so we delcare that. 
// no return expected
func numsBetweenTwoAndFive(one int, two int) {
	// two ways to declare local variables in golang
	// implicitly
	div3 :=0
	// or explicity and ints default to 0
	var div5 int

	// check if one is greater than two and if so, swap them
	if one > two {
		one, two = two, one
	}

	//
	for i := one; i <= two; i++ {
		if i % 3 == 0 {
			fmt.Printf("%d is divisible by 3\n", i)
			div3++
		}
		if i % 5 == 0 {
			fmt.Printf("%d is divisible by 5\n", i)
			div5++
		}
	}
	fmt.Printf("There are %d numbers divisible by 3\n", div3)
	fmt.Printf("There are %d numbers divisible by 5\n", div5)
}

func main() {
	// we will take in two numbers from the command line
	// like python os.args[0] holds the path to the program
	if len(os.Args) != 3 {
		fmt.Printf("Usage: %s <start int val> <end int val>\n\n", os.Args[0])
		os.Exit(1)
	}
	
	// we will use the strconv package to convert the string to an int
	// we will use the _ to ignore the error value
	// as strconv.Atoi(...) returns two values (int, error)
	one, _ := strconv.Atoi(os.Args[1])
	// I'll show you what it would look like to handle an error
	// as the golang error handling is a little different than other languages
	two, err := strconv.Atoi(os.Args[2])
	if err != nil {
		fmt.Printf("Str conv error: %s\n", err)
	}
	numsBetweenTwoAndFive(one, two)
}	

