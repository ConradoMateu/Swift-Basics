// Playground - noun: a place where people can play

import UIKit

var str = "Conrado"

var newString = str + " Mateu" + " Gisbert"

for character in newString.characters  {
    
    print(character)
    
}

var newTypeString = NSString(string: newString)

newTypeString.substringToIndex(7)

newTypeString.substringFromIndex(8)

newTypeString.substringWithRange(NSRange(location: 8, length: 5))

newTypeString.containsString("Mateu")

newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString

