// Playground - noun: a place where people can play

import UIKit



// A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. 

// Any type that satisfies the requirements of a protocol is said to conform to that protocol.

protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}


class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class. "
    var anotherProperty: Int = 69394
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another simple class. "
    func adjust() {
        simpleDescription += "Adjusted"
    
    }
    
}

var protocolArray: [ExampleProtocol] = [SimpleClass(),SimpleClass(),SimpleClass2()]

for instace in protocolArray{
    instace.adjust()
}

protocolArray




    
