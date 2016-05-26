//: Playground - noun: a place where people can play

import UIKit



// MAP:  loop over a collection and apply the same operation to each element in the collection

let numbers: [Double] = [4.0,5.0,8.0,10]

var square: [Double] = []


    // Without Using Map

    for number in numbers {
        square.append(number*number)
    }

    // Using Map

    let values: [Int] = [4,10,12]

    var squaresMap = values.map{$0 * $0}

    //Map, other utilities

    var words: [String] = values.map{NSNumberFormatter.localizedStringFromNumber($0, numberStyle: .SpellOutStyle)}

    //Dictionary Example

    let km = ["First":120.0,"Second":50.0,"Third":70.0]
    let kmToPoint = km.map { name,miles in miles * 1000 }


    // Set Example

    let meters: Set = [5.3,4.5,2.4]
    let metersToFeet = meters.map {meters in meters * 3.2808}



// Filter: loop over a collection and return an Array containing only those elements that match an include condition

let digits: [Int] = [1,4,10,15,21,30,32]
var odd: [Int] = digits.filter{ $0 % 2 != 0 }
odd

let even = digits.filter { $0 % 2 == 0 }

even







