package main

import (
	"fmt"
	"os"
	"log"
	"regexp"
	"strconv"
)

func main() {

	input, err := os.ReadFile("input.txt")

	if err != nil {
		log.Fatal(err)
	}
	
	regexMul := regexp.MustCompile(`mul\(\d+,\d+\)`)

	regexNums := regexp.MustCompile(`\d+`)

	matches := regexMul.FindAllString(string(input), -1)

	sum := 0

	for _, match := range matches {
		nums := regexNums.FindAllString(match, -1)
		left, _ := strconv.Atoi(nums[0])
		right, _ := strconv.Atoi(nums[1])
		sum +=  left * right
	}

	fmt.Println(sum)

}