//
//  CollectionExtensionsTests.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 05/01/2021.
//

import XCTest
@testable import CollectionExtensions

final class CollectionExtensionsTests: XCTestCase {
    
    // MARK: Tests sum: Self.Element
    
    func testSumOfCollectionOfInt() {
        XCTAssertEqual(0, [].sum)
        XCTAssertEqual(0, [4, 2, -3, 5, 0, -7, 1, -2].sum)
        XCTAssertEqual(33, [0, 1, 1, 2, 3, 5, 8, 13].sum)
        XCTAssertEqual(-55, [-1, -4, -9, -16, -25].sum)
    }
    
    func testSumOfCollectionOfDouble() {
        XCTAssertEqual(71.58, [0.1, 3.6, 10.15, 21.28, 36.45].sum)
        XCTAssertEqual(-171.27, [-92.70, -51.35, -22.12, -5.1].sum)
        XCTAssertEqual(3.399999999999999999999, [1.133333333333333333333, 2.266666666666666666666].sum)
    }
    
    func testSumOfCollectionOfFloat() {
        let collection1: [Float] = [0.1, 3.6, 10.15, 21.28, 36.45]
        XCTAssertEqual(71.58, collection1.sum)
        let collection2: [Float] = [-92.70, -51.35, -22.12, -5.1]
        XCTAssertEqual(-171.27, collection2.sum)
        let collection3: [Float] = [1.133333333333333333333, 2.266666666666666666666]
        XCTAssertEqual(3.399999999999999999999, collection3.sum)
    }
}
