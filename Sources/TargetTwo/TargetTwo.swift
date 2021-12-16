//
//  File.swift
//  
//
//  Created by liupeng on 2021/12/14.
//

import Foundation
import SwiftProtobuf
import SystemPackage

public struct TargetTwo {
    public init () {
        
    }
    
    public func log() {
        print("im TargetTwo!")
        
        print(SwiftProtobuf.AnyUnpackError.self)
        print(SystemPackage.FileDescriptor.self)
        
    }
}
