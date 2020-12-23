import XCTest
@testable import OnBoarding

final class OnBoardingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OnBoarding().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
