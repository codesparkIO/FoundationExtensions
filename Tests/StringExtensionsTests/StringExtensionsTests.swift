//
//  StringExtensionsTests.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 03/01/2021.
//

import XCTest
@testable import StringExtensions

final class StringExtensionsTests: XCTestCase {
    
    // MARK: Tests func excludingCharacters(in characterSet: CharacterSet) -> String
    
    func testExcludingAlphanumericsFromString() {
        let testStringWithAlphaNumericChars = ")0a!1b@2c#3d$4e%5f^6g&7h*8i(9j"
        let testStringWithoutAlphaNumericChars = ")!@#$%^&*("
        XCTAssertEqual(
            testStringWithAlphaNumericChars.excludingCharacters(in: CharacterSet.alphanumerics),
            testStringWithoutAlphaNumericChars)
    }
    
    func testExcludingCustomCharacterSetFromString() {
        let testString = ")0a!1b@2c#3d$4e%5f^6g&7h*8i(9j"
        let testStringWithoutCharacters = ")0a!1b@c#3$4e%5f^6g7h*89j"
        let characterSet = CharacterSet(charactersIn: "&2id(")
        XCTAssertEqual(
            testString.excludingCharacters(in: characterSet),
            testStringWithoutCharacters)
    }
    
    func testExcludingEmptyCharacterSetFromString() {
        let testString = ")0a!1b@2c#3d$4e%5f^6g&7h*8i(9j"
        let characterSet = CharacterSet()
        XCTAssertEqual(
            testString.excludingCharacters(in: characterSet),
            testString)
    }
    
    func testExcludingAllCharactersFromString() {
        let testString = ")0a!1b@2c#3d$4e%5f^6g&7h*8i(9j"
        let characterSet = CharacterSet(charactersIn: testString)
        let emptyString = ""
        XCTAssertEqual(
            testString.excludingCharacters(in: characterSet),
            emptyString)
    }
}
