//: Playground - noun: a place where people can play

import UIKit

// This lesson is around Tuples and Scoping (they don't have anything to do with eachother).


// TUPLES!
// For more info on Tuples, check out this Medium post:
// https://medium.com/swift-programming/facets-of-swift-part-2-tuples-4bfe58d21abf



// How do you pronounce tuple?  // https://youtu.be/7fTVCQRQYXk?t=5s
// What is a tuple?
// How do you use them?
// Why would you use them?








// What is a tuple?

// Tuples are like anonymous dictionaries or structs -- dictruct / structionaries

var myTuple = (myStringVar: "Hello", myIntVar: 5)

// they can be accessed by name
let stringy = myTuple.myStringVar
myTuple.myStringVar = "Ahoy-hoy"

// Values are passed, not references
let areValuesPassedByReference = (stringy == myTuple.myStringVar)



var thrupple = (1, 2, 3)

// Equality is considered by ensuring all the key/values match.
thrupple == (1, 2, 3) // true
thrupple == (1, 2, 0) // false


// You can also define variables by cutting a slice of a tuple.

let (first, second, third) = thrupple
first
second
third

// you can use the "I don't care" operator `_` to ignore values you aren't targeting
var (_, intValue) = myTuple
assert(intValue == myTuple.myIntVar)

// You can also dive into them by index (based on the order the keys are defined)
first == thrupple.0
second == thrupple.1
3 == thrupple.2







// Access modifiers / scoping
// open, public, private, fileprivate
// What is open
//  -- wait, isn't that what "Public" is?
// FilePrivate (?) 
//  -- similar to "internal" or unscoped in Java

/**
`open` is equivallent to `public` in Java.
 anyone can see it, anyone can override it in subclasses
 
 `public` is equivallent to `public final` in Java
 Anyone can see it, but nobody can override it.
 
 `private` is private is private
 
 `fileprivate` is like `public` but only inside the same contiguous filesystem file.
 
 `` unscoped/default scope is public to anything in the same module, private outside.
 */

// example of `fileprivate`

class FiveGiver {
    fileprivate func gimmeFive() -> Int {
        print("I was called!")
        return 5
    }
}

class FiveRejector : FiveGiver {
    override func gimmeFive() -> Int {
        return 1 // that's not five!
    }
}

//FiveGiver().gimmeFive()
FiveRejector().gimmeFive()

// because we're in the same file
