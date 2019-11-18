# PrintMate

[![CI Status](https://img.shields.io/travis/shawnynicole/PrintMate.svg?style=flat)](https://travis-ci.org/shawnynicole/PrintMate)
[![Version](https://img.shields.io/cocoapods/v/PrintMate.svg?style=flat)](https://cocoapods.org/pods/PrintMate)
[![License](https://img.shields.io/cocoapods/l/PrintMate.svg?style=flat)](https://cocoapods.org/pods/PrintMate)
[![Platform](https://img.shields.io/cocoapods/p/PrintMate.svg?style=flat)](https://cocoapods.org/pods/PrintMate)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ruby
try pod 'PrintMate'
```

## Requirements

Swift 5

## Installation

PrintMate is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PrintMate'
```

## Usage

```ruby

import UIKit
import PrintMate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Common usage
        
        verbose("Hello World!")
        
        // Custom title 
        // A separator with a custom title is drawn around the text in the console.
        
        verbose(type: .title("Custom"), "Hello World!")
        
        // Static 
        
        MyStruct.sayHello()
        
        // MyStruct conforms to Verbose
        
        MyStruct().sayHello()
        
        // Handling errors
        // A separator is drawn around the error in the console so that errors stand out.
        
        do {
            try getError()
        } catch {
            verbose(error)
        }
        
        // Superclass
        
        AClass().sayHello()
        
        // Subclass
        // Subclass calls super. Notice PrintMate.AClass.swift 15 and PrintMate.BClass.swift 16 is printed to the console.
        
        BClass().sayHello()
    }
    
    func getError() throws {
        throw MyError("This is my error message.")
    }
}
```

```ruby

[2019-11-18 03:29:08 PM PrintMate.ViewController.swift ViewController.viewDidLoad() 19] Hello World!

************************************************************** CUSTOM **************************************************************
[2019-11-18 03:29:08 PM PrintMate.ViewController.swift ViewController.viewDidLoad() 24] Hello World!
***********************************************************************************************************************************

[2019-11-18 03:29:08 PM PrintMate.MyStruct.swift MyStruct.sayHello() 15] Hello World!

[2019-11-18 03:29:08 PM PrintMate.MyStruct.swift MyStruct.sayHello() 19] Hello World!

************************************************************** ERROR **************************************************************
[2019-11-18 03:29:08 PM PrintMate.ViewController.swift ViewController.viewDidLoad() 40] MyError(message: "This is my error message.")
***********************************************************************************************************************************

[2019-11-18 03:29:08 PM PrintMate.AClass.swift AClass.sayHello() 15] Hello AClass!

[2019-11-18 03:29:08 PM PrintMate.AClass.swift BClass.sayHello() 15] Hello AClass!

[2019-11-18 03:29:08 PM PrintMate.BClass.swift BClass.sayHello() 16] Hello BClass!

```

## Author

shawnynicole

## License

PrintMate is available under the MIT license. See the LICENSE file for more info.
