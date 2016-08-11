//: Playground - noun: a place where people can play

import UIKit

let array = [8, 4, 8, 1]

for number in array {
    print(number)
}

// Challenge - Create an array with 4 names of friends/family print "Hi there ---!"

let famArray = ["Nas", "Soff", "Khalil", "Nuraini"]

for people in famArray {
    
    print("Hi there " + people)
    
}

var numbers = [7, 2, 9, 4, 1]

for (index, value) in numbers.enumerated() {
    
    numbers[index] += 1
    
}

print(numbers)


//Challenge -  array containing 8, 7, 19, 28. Halve each of the values

var numArray = [Double]()

numArray = [8, 7, 19, 28]

for (index, value) in numArray.enumerated() {
    
    numArray[(index)] = value / 2
    
}
		print(numArray)