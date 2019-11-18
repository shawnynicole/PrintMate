//
//  MyError.swift
//  PrintMate_Example
//
//  Created by DeShawn Jackson on 11/18/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

struct MyError: Error {
    
    public let message: String
    
    public init(_ message: String) {
        self.message = message
    }
}
