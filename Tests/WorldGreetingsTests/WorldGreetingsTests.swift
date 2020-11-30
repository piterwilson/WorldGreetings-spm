import XCTest
@testable import WorldGreetings

final class WorldGreetingsTests: XCTestCase {
    
    var sut: WorldGreetings!
    
    override func setUp() {
        sut = WorldGreetings()
    }
    
    func testHello_IsLocalized() {
        XCTAssertEqual(sut.hello, "Hello")
    }
}
