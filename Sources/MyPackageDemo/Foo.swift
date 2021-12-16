//
//  File.swift
//  
//
//  Created by liupeng on 2021/12/14.
//

import Foundation
import Crypto
import NIO

public struct Foo {
    public init () {
        
    }
    
    public func log() {
        print("im foo!")
        
        print(Crypto.AES.self)
        print(NIO.ChannelEvent.self)
    }
}
