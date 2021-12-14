public struct MyPackageDemo {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    func log() {
        print(text)
    }
}
