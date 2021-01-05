//
//  CollectionExtensions.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 05/01/2021.
//

import Foundation

extension Collection where Element: Numeric {
    /// The sum of all values in the array.
    var sum: Self.Element { reduce(0, +) }
}
