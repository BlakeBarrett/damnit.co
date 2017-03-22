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
 */
/*
class MySwiftClass {
    // Optional
    var hey: String?
}
 
 */
/*
class MySwiftClass {
    // Literal, type inferred
    var hey = "Hey!"
}
 */
/*
class MySwiftClass {
    // Typed var, initialized in initializer.
    var hey: String
    init() {
        self.hey = "Hey"
    }
}
 */
/*
class MySwiftClass {
    var hey // Type annotation missing in pattern
    init() {
        self.hey = "Hey"
    }
}
 */
/*
class MySwiftClass {
    // declared type, initialized to empty state.
    var hey = String()
    var heyHey: String = String()
    var heyHeyHey: String? = String()
    init() {
        //self.hey = "Hey"
    }
}
 */
// If I tried checking the value of: `MySwiftClass().hey`, what do you think it would be?
//What about: 
//MySwiftClass().hey
//MySwiftClass().heyHey
//MySwiftClass().heyHeyHey

/*
class MySwiftClass {
    let hello = "Hello"
    let world: String = "World"
    
    var hey:String
    init() {
//        hey = "\(hello), \(world)!"
//        hey = hello + ", " + world + "!"
    }
    // return from initializer without initializing all stored properties
}
//MySwiftClass().hey
 */
/*
class MySwiftClass {
    static let hello = "Hello"
    static let world: String = "World"
    
    var hey = "\(hello), \(world)!"
}
MySwiftClass().hey
*/


// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html
class MySwiftClass {
    var hello: String {
//        print("Hello Getter called!")
        return "Hello"
    }
    var world: String {
        get {
//            print("World Getter called!")
            return "World"
        }
        set(value) {
//            print("Setter called with value: \(value)")
        }
    }
    
    // default getter
    var helloWorld: String {
//        print("Hey Getter called!")
        return "\(hello), \(world)!"
    }
}
//MySwiftClass().helloWorld
//MySwiftClass().world = "catface"
