//: Playground - noun: a place where people can play

import UIKit

// Dictionaries

var dictionary = ["computer": "something to play Call Of Duty on", "coffee": "best drink ever"]

print(dictionary["coffee"]!)

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"

dictionary.removeValueForKey("computer")

print(dictionary)

// Challenge

var menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

var totalCost = menu["pizza"]! + menu["ice cream"]! + menu["salad"]!

print("The total cost of the tree items is \(totalCost)")





// Arrays

var array = [17, 25, 13, 47]

print(array[2])

print(array.count)

array.append(56)

array.removeAtIndex(3)

print(array)

array.sort()

// Challenge

var myArray = [3.87, 7.1, 8.9]

myArray.removeAtIndex(1)

myArray.append(myArray[0] * myArray[1])
