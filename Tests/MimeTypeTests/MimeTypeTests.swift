import XCTest
@testable import MimeType

class MimeTypeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(MimeType().text, "Hello, World!")
    }


    static var allTests : [(String, (MimeTypeTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
