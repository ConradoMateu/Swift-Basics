

//: Playground - noun: a place where people can play

import UIKit


// Basic While Loop

var i = 1

while i <= 10 {
    
    print(i * 5)
    
    i++
    
}

// While Looping Through An Array

var myArray = [8, 3, 6, 8, 2, 45, 21]

var j = 0

while j < myArray.count {
    
    myArray[j] = myArray[j] - 1
    
    i++
    
}

print(myArray)



// Basic For Loop

for var i = 2; i <= 20; i = i + 2 {
    
    print(i)
    
}

var arr = [8, 3, 9, 91]

// Looping through an array

for x in arr {
    
    print(x)
    
}

// The Enumerate Loop



for (index, value) in arr.enumerate() {
    
    arr[index] = value + 1
    
}

print(arr)


// Challenge

var myArray = [8.0, 7.0, 19.0, 28.0]

for (index, value) in myArray.enumerate() {
    
    myArray[index] = value / 2
    
}

print(myArray)
















