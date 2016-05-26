//: Playground - noun: a place where people can play




import UIKit

var optional: Int? = 0

optional = nil // Could be nil

optional = 5 // Or Could have a value


//Unwrapping Optionals: Say that the optional is going to have a value


var i : Int = 5 + optional!

//Optional Bindings: check wheter an optional is nil or not

if let k = optional{
    i = 5 + k
}

//Guard :  Since Version 2.0 of Swift, another way to check optional




struct field{
    var text: String
    init?(text: String){
        self.text = text
    }
}



let name: String? = "Conrado Mateu"
let address: String? = "Spain"
let phone: String? = "232432424"

func submit() {
    guard let a = name else {
        print("No name to submit")
        return
    }
    
    guard let b = address else {
        print("No address to submit")
        return
    }
    
    guard let c = phone else {
        print("No phone to submit")
        return
    }
    
    printPerson(a, b, c)
}



func printPerson(name: String, _ address: String,_ phone: String){
    print("\(name): lives in \(address) and the number of the telephone is \(phone)")
    
}

submit()



//Pyramid of Dom (nested if/else)


/*func nonguardSubmit() {
 if let a = name {
 if let b = address {
 if let c = phone {
 printPerson(name, address: address, phone: phone)
 } else {
 show("no phone to submit")
 }
 } else {
 show("no address to submit")
 }
 } else {
 show("no name to submit")
 }
 }*/

