//
//  CollectionExtensions.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 05/01/2021.
//

import Foundation

extension Collection where Element: AdditiveArithmetic {
    /// The sum of all values in the array.
    var sum: Element { reduce(.zero, +) }
}

extension Collection where Element: NSNumber {
    /// The sum of all values in the array.
    var sum: NSDecimalNumber { reduce(NSDecimalNumber(value: 0.0)) { $0.adding(NSDecimalNumber(decimal: $1.decimalValue)) } }
}
