//: Playground - noun: a place where people can play
import UIKit

class Example1 {
    // static function
    // default/optional parameters
    // closure based .foreEach (same syntax for .map and .reduce)
    static func getHighestValueIn(numbers: [Int?]?, butNotHigherThan limit: Int? = Int.max) -> Int {
        
        var highest = 0
        
        numbers!.forEach({ (i:Int?) in
            if i! > highest {
                if i! < limit! {
                    highest = i!
                }
            }
        })
        
        return highest
    }
    
    func toString() {
        let highest = Example1.getHighestValueIn(numbers: nil)
        print("The highest number we can get from nil are: \(highest)")
    }
    
}


// Exercise 1: convert from using damnit! everywhere, to a `guard`
// Exercise 2: convert same to use `if let`
// Exercise 3: convert to using nil coalescing operator `??`



// closures / lambda / anonymous functions / iteration
var getFirstValueIn:([Int]) -> Int = { (numbers: [Int]) in
    return numbers.first!
}
var lastValue:Int?
let captureLastValueIn:(Int) -> Void = { i in
    lastValue = i
}

let values = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]
//print("The first value is \(getFirstValueIn(values))")

for i in values {
//    print(i)
}
values.forEach { (i:Int) in
//    print(i)
}

values.forEach(captureLastValueIn)
//print(lastValue)



//
// convenience initializers
//

class Pixel {
    
    var color: UIColor
    var x: Int
    var y: Int
    
    convenience init(x: Int, y: Int, color: UIColor = UIColor.magenta) {
        self.init()
        self.x = x
        self.y = y
        self.color = color
    }
    
    required init(color: UIColor = UIColor.clear) {
        self.x = 0
        self.y = 0
        self.color = color
    }
}

// For more on convenience intitializers, check out Apple's documentation
// here: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-ID217


// extensions

extension Pixel {
    func toString() {
        print("Pixel(x: \(x), y: \(y), color: \(color))")
    }
}

