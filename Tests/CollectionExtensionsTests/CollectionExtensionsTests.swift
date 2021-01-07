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
        XCTAssertEqual(71.58000000000001, [0.1, 3.6, 10.15, 21.28, 36.45].sum)
        XCTAssertEqual(-171.27, [-92.70, -51.35, -22.12, -5.1].sum)
        XCTAssertEqual(16.5, [1.1, 2.2, 3.3, 4.4, 5.5].sum)
        XCTAssertEqual(3.399999999999999999999, [1.133333333333333333333, 2.266666666666666666666].sum)
    }
    
    func testSumOfCollectionOfFloat() {
        let collection1: [Float] = [Float(0.1), 3.6, 10.15, 21.28, 36.45]
        XCTAssertEqual(71.58, collection1.sum)
        let collection2: [Float] = [-92.70, -51.35, -22.12, -5.1]
        XCTAssertEqual(-171.26999, collection2.sum)
        let collection3: [Float] = [1.133333333333333333333, 2.266666666666666666666]
        XCTAssertEqual(3.399999999999999999999, collection3.sum)
    }
    
    func testSumOfCollectionOfDecimal() {
        XCTAssertEqual(Decimal(71.58),
                       [Decimal(0.1), Decimal(3.6), Decimal(10.15), Decimal(21.28), Decimal(36.45)].sum)
        XCTAssertEqual(Decimal(-171.27),
                       [Decimal(-92.70), Decimal(-51.35), Decimal(-22.12), Decimal(-5.1)].sum)
        XCTAssertEqual(Decimal(sign: .plus, exponent: -10, significand: 39999999999),
            [Decimal(sign: .plus, exponent: -10, significand: 13333333333),
             Decimal(sign: .plus, exponent: -10, significand: 26666666666)].sum)
    }
    
    func testSumOfCollectionOfNSNumber() {
        XCTAssertEqual(NSNumber(0), [].sum)
        XCTAssertEqual(NSNumber(0),
                       [NSNumber(4), NSNumber(2), NSNumber(-3), NSNumber(5), NSNumber(0), NSNumber(-7), NSNumber(1), NSNumber(-2)].sum)
        XCTAssertEqual(NSNumber(33),
                       [NSNumber(0), NSNumber(1), NSNumber(1), NSNumber(2), NSNumber(3), NSNumber(5), NSNumber(8), NSNumber(13)].sum)
        XCTAssertEqual(NSNumber(-55),
                       [NSNumber(-1), NSNumber(-4), NSNumber(-9), NSNumber(-16), NSNumber(-25)].sum)
    }
    
    func testSumOfCollectionOfNSDecimalNumber() {
        XCTAssertEqual(NSDecimalNumber(value: 71.58),
                       [NSDecimalNumber(value: 0.1),
                        NSDecimalNumber(value: 3.6),
                        NSDecimalNumber(value: 10.15),
                        NSDecimalNumber(value: 21.28),
                        NSDecimalNumber(value: 36.45)].sum)
        
        XCTAssertEqual(NSDecimalNumber(value: -171.27),
                       [NSDecimalNumber(value: -92.70),
                        NSDecimalNumber(value: -51.35),
                        NSDecimalNumber(value: -22.12),
                        NSDecimalNumber(value: -5.1)].sum)
        
        XCTAssertEqual(NSDecimalNumber(value: 16.5),
                       [NSDecimalNumber(value: 1.1),
                        NSDecimalNumber(value: 2.2),
                        NSDecimalNumber(value: 3.3),
                        NSDecimalNumber(value: 4.4),
                        NSDecimalNumber(value: 5.5)].sum)
        
        XCTAssertEqual(NSDecimalNumber(mantissa: 39999999999, exponent: -10, isNegative: false),
                       [NSDecimalNumber(mantissa: 13333333333, exponent: -10, isNegative: false),
                        NSDecimalNumber(mantissa: 26666666666, exponent: -10, isNegative: false)].sum)
    }
}
