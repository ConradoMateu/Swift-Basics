//: Playground - noun: a place where people can play

import UIKit


// Creating a class

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// Creating a shape

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

// Class with initializer

class NamedShape {
    var numberOfSides = 0
    var name: String
    
    //self is property name (of the class)
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// Calling a initializer

let namedShape = NamedShape(name: "my named shape")

// Inherit from superclass and override methods

class Square: NamedShape {
    
    //properties and values
    var sideLength: Double
    
    //initializer of superclass
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    //functions
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()


// Use `init?` to declare a failable initializer.

class Circle: NamedShape {
    var radius: Double
    
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}
let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")


// Downcasting with as? because can fail.

class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
    
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square2")]
var squares = 0
var triangles = 0
for shape in shapesArray {
    if let square = shape as? Square {
        squares += 1
    } else if let triangle = shape as? Triangle {
        triangles += 1
    }
}
print("\(squares) squares and \(triangles) triangles.")