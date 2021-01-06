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
