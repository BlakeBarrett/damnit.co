//: Playground - noun: a place where people can play

import UIKit

// As you can already see, Swift makes decalring variables is super-easy!

var str = "Hello, playground"

var hello: String = "Hello!"

var playground: String
playground = "playground"



// But as is always the case, easier said than done.
/*
 class MySwiftClass {
    // Literal
    var hey: String = "Hey!"
 }

class MySwiftClass {
    // Optional
    var hey: String?
}
class MySwiftClass {
    // Literal, type inferred
    var hey = "Hey!"
}
*/

class MySwiftClass {
    var hey: String
    init() {
        self.hey = "Hey"
    }
}
