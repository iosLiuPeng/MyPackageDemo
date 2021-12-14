public struct MyPackageDemo {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func log() {
        print(text)
    }
}
