//: Playground - noun: a place where people can play

import UIKit


//Creating a function

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

// Calling a function

greet("Anna", day: "Tuesday")
greet("Bob", day: "Friday")
greet("Charlie", day: "a nice day")

// Functions that are defined within a specific type are called methods
// Example -->  type `String` called in `hasSuffix()`, shown again here:
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("ends in lo")
}

//Calling a method using a dot Syntax

var array = ["Conrado", "Mateu", "conradomateu@github.io"]
array.insert("Gisbert", atIndex: 2)
array
