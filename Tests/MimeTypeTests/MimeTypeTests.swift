import XCTest
@testable import MimeType

class MimeTypeTests: XCTestCase {
    func testMimeTypeFromString() {
        let path = "/User/onevcat/hello.html"
        XCTAssertEqual(MimeType(path: path).value, "text/html")
    }

    func testMimeTypeFromURL() {
        let path = "/User/onevcat/hello.html"
        let url = URL(fileURLWithPath: path)
        XCTAssertEqual(MimeType(url: url).value, "text/html")
    }

    func testMimeTypeFromNSString() {
        let path: NSString = "/User/onevcat/hello.html"
        XCTAssertEqual(MimeType(path: path).value, "text/html")
    }

    func testMimeTypeDefaultType() {
        let path = "/User/onevcat/hello.xyz"
        XCTAssertEqual(MimeType(path: path).value, "application/octet-stream")
    }

    static var allTests : [(String, (MimeTypeTests) -> () throws -> Void)] {
        return [
            ("testMimeTypeFromString", testMimeTypeFromString),
            ("testMimeTypeFromURL", testMimeTypeFromURL),
            ("testMimeTypeFromNSString", testMimeTypeFromNSString),
            ("testMimeTypeDefaultType", testMimeTypeDefaultType)
        ]
    }
}
