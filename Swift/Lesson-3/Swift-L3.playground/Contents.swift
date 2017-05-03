//: Playground - noun: a place where people can play

import Foundation


typealias NoArgumentFunction = () -> Void
typealias FunctionWithAStringArgument = (String) -> Void





// function no arguments
let a: NoArgumentFunction = {
    print("Yup, this works!")
}
a()








/*
// Explicitly typed.
//   One named argument
let b: FunctionWithAStringArgument = {(firstArgument:String) in
    print("My function takes an argument, its: \(firstArgument)")
}
b("Oscar")
*/














/*
// Type inferred.
//    One named argument
let c = {(thingIAmGoingToPrint:String) in
    print("My second function takes an argument, its: \(thingIAmGoingToPrint)")
}
c("Myer")
*/












/*
// Explicitly typed.
//   Argument un-named.
let d: FunctionWithAStringArgument = {
    print("My function takes an argument, its: \($0)")
}
d("Anonymous argument!")
*/















/*
// Implicitly typed.
//   variable length arguments (must be of the same type)
let e = { (args: Int...) in
    print(args.count)
}
e(10,11,12,5,4,3,2,1)
*/











/*
// Implicitly typed.
//   Variable length function call
//      -- Why doesn't it work?
//      -- How can we change it to work?
let f = {
    print($0)
}
f("Cats", "Dogs", "Deer", "Trash Pandae", "River Monsters", "Octopodes")
*/






// Escaping and non-escaping closures.
//   As of Swift 3, all closures are (by default) non-escaping.
//   For more info on @escaping and @noescape check out:
//   https://swiftunboxed.com/lang/closures-escaping-noescape-swift3/



