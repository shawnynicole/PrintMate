//
//  ViewController.swift
//  PrintMate
//
//  Created by shawnynicole on 11/18/2019.
//  Copyright (c) 2019 shawnynicole. All rights reserved.
//

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
