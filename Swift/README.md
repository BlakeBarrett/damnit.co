# Swift 3

## About these "Lessons"?

I do not intend or expect these lessons to be a comprehensive (or even a good) way to learn Swift. It is intended to be the interesting things you probably wouldn't know by just reading a random blob of sourcecode while poking around. 

### This could be titled, **_`A confusing introduction to the cool parts of Swift 3.`_**

## Topics

Here is a list of things I'd like to cover in this course.

```Swift
    var
    let
 
 
    type casting:
        • varName: Type
        • varName: String // must be initialized in the `init` func
        • varName: String?
        • varName = "Hello, World!"
        • varName = (someThing as! String)
        • typealias Closure = ()->Void
 
    Optionals
    guard
    if let                          // `let x = self.x` returns a Boolean
    lazy                            // lazy instantiation
    ??                              // nil coalescing operator
    ? :                             // terinary operation
    _                               // underscore / I don't care
    ()->Void                        // closures
    (()->Void)?                     // optional closures
    ()->Bool = { return false }     // default values for arguments (works for closures as well)
    
    @objc                           // Objective C annotations. Values to share with legacy Obj-C code.
 
    open, public, private, internal, fileprivate // scoping

    class var // overrideable by subclasses
 
 ```
 
 There is also the extraneous "Lesson-5", which are answers to iOS specific questions people had when taking this "course".
