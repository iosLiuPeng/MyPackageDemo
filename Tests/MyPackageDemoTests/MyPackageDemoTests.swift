import XCTest
@testable import MyPackageDemo

final class MyPackageDemoTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyPackageDemo().text, "Hello, World!")
    }
}
