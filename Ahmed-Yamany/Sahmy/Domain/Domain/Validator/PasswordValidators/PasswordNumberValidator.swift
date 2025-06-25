//
//  PasswordNumberValidator.swift
//  Shared
//
//  Created by Ahmed Yamany on 06/11/2024.
//

import Foundation

public struct PasswordNumberValidator: Validator {
    let value: Password
    public init(_ value: Password) {
        self.value = value
    }

    public func validate() throws {
        let numberRegex = ".*[0-9]+.*"
        let letterPredicate = NSPredicate(format: "SELF MATCHES %@", numberRegex)
        if !letterPredicate.evaluate(with: value.value) {
            throw PasswordNumberError()
        }
    }
}

private struct PasswordNumberError: Error, LocalizedError {
    var errorDescription: String? {
        "password should contain at least one number"
    }
}
