//
//  File.swift
//  
//
//  Created by liupeng on 2021/12/14.
//

import Foundation
import ComplexModule
import Numerics
import RealModule

public struct TargetOne {
    public init () {
        
    }
    
    public func log() {
        print("im TargetOne!")
        
        print(Numerics.Augmented.self)
        print(RealModule.Augmented.self)
    }
}
