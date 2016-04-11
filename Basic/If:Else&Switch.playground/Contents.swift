//: Playground - noun: a place where people can play

import UIKit

// If Statements

var age = 13

// Greater than or equal to

if age >= 18 {
    
    print("You can play!")
    
} else {
    
    print("Sorry, you're too young")
    
}

// Equal to

var name = "Kirsten"

if name == "Rob" {
    
    print("Hi " + name + " you can play!")
    
} else {
    
    print("Sorry, " + name + " you can't play")
    
}

// 2 If statements with AND

if name == "Kirsten" && age >= 18 {
    
    print("You can play!")
    
}

// 2 If statements with OR

if name == "Kirsten" || name == "Rob" {
    
    print("Welcome " + name)
    
}

var isMale = true

if isMale {
    
    print("You are a man!")
    
}

// Challenge

var username = "robpercival"

var password = "myPass"

if username == "robpercival" && password == "myPass123" {
    
    print("You're In!")
    
} else if username != "robpercival" && password != "myPass123" {
    
    print("Both your username and password are wrong")
    
} else if username == "robpercival" {
    
    print("Your password is wrong")
    
} else {
    
    print("Your username is wrong")
    
}

//If Let to check if the optional value is not null

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    
}

var optionalHello: String? = "Hello"
if let hello = optionalHello where hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}

// Switch example

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}














