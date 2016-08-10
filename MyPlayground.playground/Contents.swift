//: Playground - noun: a place where people can play

import UIKit

// var and let

var str = "Hello, playground"

str = "Hi, playground"

let otherStr = "Hi, Nas!" // otherStr cannot be changed


// Strings

let name = "Nas Wahab"

print("Hello " + name)

// Integer (whole number)

var myInt = 8

print(myInt * 2)

print(myInt + 100)

myInt = myInt + 1

myInt = myInt / 5

print("myInt has value \(myInt)")

//My name is Nas and I am 35 years old

let age = 34

print("My name is " + name + " and I am \(age) years old")

// Doubles and Float

var a:Double = 8.73

var b:Float = 8.73

var c = 7.12

print(a / c)

// print(a / b) can't combine two different types

print(Double(myInt) + a)

// Boolean

let gameOver = false

var gameOverString = String(gameOver)

// double = 5.76, int = 8, print product of both is ......

let db:Double = 5.76

let nb = 8

let ans = db * Double(nb)

print("The product of \(db) and \(nb) is \(db * Double(nb))")

// Array

var array = [35, 35, 5, 2]

print(array[0])

print(array.count)

array.append(1)

array.remove(at: 1)

array.sort()

print(array)

// Challenge 3.87, 7.1, 8.9 Remove 7.1 Append 3.87 * 8.9

var challengeArray = [3.87, 7.1, 8.9]

challengeArray.remove(at: 1)

challengeArray.append(challengeArray[0] * challengeArray[1])

let mixArray = ["Rob", 35, true]

let stringArray = [String]()

// Dictionary

var dictionary = ["computer": "something to play call of duty on", "coffee": "best string ever"]

print(dictionary["computer"])

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"

dictionary.removeValue(forKey: "computer")

print(dictionary)

var gameCharacters = [String:Double]()

gameCharacters["ghost"] = 8.7

//Challenge Menu pizza (10.99), ice cream (4.99), salad (7.99) Print "The total cost of my meal is xxxx"

var menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

print("The total cost of my meal is \(menu["pizza"]! + menu["ice cream"]!)")







