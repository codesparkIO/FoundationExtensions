//
//  ArrayExtensions.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 04/01/2021.
//

import Foundation

extension Array {
    /**
     Returns the element present at a given index.
     
     - Parameters:
        - index: The index representing a position in the `Array`.
     
     - Returns: An element from the `Array` at the given index if it is within the bounds of the `Array`, otherwise `nil`.
     */
    func element(at index: Int) -> Element? {
        guard index >= 0, index < count else {
            return nil
        }

        return self[index]
    }
}
