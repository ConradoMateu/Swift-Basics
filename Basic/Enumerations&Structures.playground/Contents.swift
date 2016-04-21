//: Playground - noun: a place where people can play

import UIKit


// Enumerations define a common type for a group of related values. Enumerations can have methods associated with them.

// Use enum to create an enumeration.

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace

//Use the rawValue property to access the raw value of an enumeration member.

let aceRawValue = ace.rawValue


// Use the `init?(rawValue:)` initializer to make an instance of an enumeration from a raw value.

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

// In cases where there isn’t a meaningful raw value, you don’t have to provide one.

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()


// One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference. Structures are great for defining lightweight data types that don’t need to have capabilities like inheritance and type casting.

// Use struct to create a structure.

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()





