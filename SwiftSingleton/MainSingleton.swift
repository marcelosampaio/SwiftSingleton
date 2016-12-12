//
//  MainSingleton.swift
//  SwiftSingleton
//
//  Created by Marcelo Sampaio on 12/11/16.
//  Copyright © 2016 Marcelo Sampaio. All rights reserved.
//

import Foundation

private let sharedSingleton = MainSingleton()

class MainSingleton {
    
    public var genericString = String()
    
    
    class var sharedInstance: MainSingleton {
        return sharedSingleton
    }
    
}
