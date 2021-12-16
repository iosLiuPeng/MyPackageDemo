import Alamofire
import Algorithms
import ArgumentParser
import Collections
import DequeModule
import OrderedCollections

public struct MyPackageDemo {
    public private(set) var text = "Hello, World!"
    
    public init () {
        
    }
    
    public func log() {
    
        print(text)
        
        print(Alamofire.AuthenticationError.self)
//        print(Algorithms.Chain2Sequence.self)
        print(ArgumentParser.ArgumentHelp.self)
//        print(Collections.OrderedDictionary.self)
//        print(OrderedCollections.OrderedDictionary.self)
        
    }
}
