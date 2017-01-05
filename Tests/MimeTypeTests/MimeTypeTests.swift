import XCTest
@testable import MimeType

class MimeTypeTests: XCTestCase {
    func testMimeTypeFromString() {
        let path = "/User/onevcat/hello.html"
        XCTAssertEqual(path.mimeType, "text/html")
    }

    func testMimeTypeFromURL() {
        let path = "/User/onevcat/hello.html"
        let url = URL(fileURLWithPath: path)
        XCTAssertEqual(url.mimeType, "text/html")
    }

    func testMimeTypeFromNSString() {
        let path: NSString = "/User/onevcat/hello.html"
        XCTAssertEqual(path.mimeType, "text/html")
    }

    func testMimeTypeDefaultType() {
        let path = "/User/onevcat/hello.xyz"
        XCTAssertEqual(path.mimeType, "application/octet-stream")
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
