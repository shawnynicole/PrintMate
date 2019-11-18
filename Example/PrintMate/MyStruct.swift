//
//  MyStruct.swift
//  PrintMate_Example
//
//  Created by DeShawn Jackson on 11/18/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import PrintMate

struct MyStruct: Verbose {
    
    public static func sayHello() {
        verbose("Hello World!")
    }
    
    func sayHello() {
        verbose("Hello World!")
    }
}
