import XCTest
@testable import WorldGreetings

final class WorldGreetingsTests: XCTestCase {
    
    func testHello_IsLocalizedInEnglish() {
        let greetings = WorldGreetings(languageCode: "en")
        XCTAssertEqual(greetings?.hello, "Hello")
    }
    
    func testHello_IsLocalizedInSpanish() {
        let greetings = WorldGreetings(languageCode: "es")
        XCTAssertEqual(greetings?.hello, "Hola")
    }
    
    func testHello_IsLocalizedInDutch() {
        let greetings = WorldGreetings(languageCode: "nl")
        XCTAssertEqual(greetings?.hello, "Hallo")
    }
    
    func testHello_IsLocalizedInHungarian() {
        let greetings = WorldGreetings(languageCode: "hu")
        XCTAssertEqual(greetings?.hello, "Szia")
    }
}
