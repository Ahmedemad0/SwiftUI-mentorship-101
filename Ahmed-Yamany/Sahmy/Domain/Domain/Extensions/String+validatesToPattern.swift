//
//  File.swift
//  Utilities
//
//  Created by Ahmed Yamany on 14/04/2025.
//

import Foundation

public extension String {
    /// Validate a string against a specified pattern using regular expressions.
    ///
    /// - Parameters:
    ///   - pattern: The regular expression pattern to match against.
    /// - Returns: `true` if the string matches the pattern; otherwise, `false`
    func validates(to pattern: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: self)
    }
}
