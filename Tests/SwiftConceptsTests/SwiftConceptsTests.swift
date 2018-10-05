import XCTest
@testable import SwiftConcepts

final class SwiftConceptsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftConcepts().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
