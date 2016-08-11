//: Playground - noun: a place where people can play

import UIKit

let age = 18

// Greater than or equal to

if age >= 18 {
    
    print("You can play")
    
} else {
    
    print("You're too young")
    
}

// Check username

let name = "kirsten"

if name == "rob" {
    
    print("Hi " + name + " you can play")
    
} else {
    
    print("Hi " + name + " you can't play")
    
}

// 2 If statement with And

if name == "rob" && age >= 18 {
    
    print("you can play")
    
} else if name == "rob" {
    
    print("Sorry rob, you need to get older")
    
}

// 2 if statement with Or

if name == "rob" || name == "kirsten" {
    
    print("Welcome " + name)
    
}

// Boolean with If Statements

let isMale = true

if isMale {
    
    print("You're male!")
    
}

//Login system. username/password variables. 1. They are correct 2. They are both wrong 3. Username is wrong 4. Password is wrong


let username = "nas"

let password = "wasHere"

if username == "nas" && password == "wasHere" {
    
    print("They are correct")
    
} else if username != "nas" && password != "wasHere" {

    print("They are both wrong")
    
} else if username != "nas" && password == "wasHere" {

    print("Username is wrong")

} else {

    print("Password is wrong")

}







		