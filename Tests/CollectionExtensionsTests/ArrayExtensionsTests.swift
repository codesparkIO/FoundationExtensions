//
//  ArrayExtensionsTests.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 04/01/2021.
//

import XCTest
@testable import CollectionExtensions

final class ArrayExtensionsTests: XCTestCase {
    
    // MARK: Tests func element(at Index: Int) -> Element?
    
    func testGettingElementFromEmptyArray() {
        XCTAssertNil([].element(at: 0))
        XCTAssertNil([].element(at: 1))
        XCTAssertNil([].element(at: 2))
    }
    
    func testGettingElementFromArrayWithOneElement() {
        let foo = "foo"
        let bar = "bar"
        let array = [foo, bar]
        XCTAssertNotNil(array.element(at: 0))
        XCTAssertEqual(foo, array.element(at: 0))
        XCTAssertEqual(bar, array.element(at: 1))
        XCTAssertNil(array.element(at: array.count))
    }
    
    func testGettingElementAtIndexOutOfArrayBounds() {
        let array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        XCTAssertNil(array.element(at: -1))
        XCTAssertNil(array.element(at: array.count))
        XCTAssertNil(array.element(at: Int.max))
    }
}
