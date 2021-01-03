//
//  StringExtensions.swift
//  Foundation Extensions - https://codesparkio.github.io/FoundationExtensions/
//
//  Created by Jobert Sa on 03/01/2021.
//

import Foundation

extension String {
    /**
     Returns a new `String` excluding the characters in the given `CharacterSet`.
     
     - Parameters:
        - characterSet: The character set containing the characters to be removed from the String.
     
     - Returns: A new `String` without the characters contained in the given `CharacterSet`.
     */
    func excludingCharacters(in characterSet: CharacterSet) -> String {
        return components(separatedBy: characterSet).joined()
    }
    
    /**
     Returns a new `String` excluding any non-alphanumeric characters.
     
     - Returns: A new `String` without any non-alphanumeric characters.
     */
    func alphanumeric() -> String {
        return excludingCharacters(in: CharacterSet.alphanumerics.inverted)
    }
}
