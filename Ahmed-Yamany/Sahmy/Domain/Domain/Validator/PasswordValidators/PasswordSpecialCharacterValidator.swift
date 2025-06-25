//
//  PasswordSpecialCharacterValidator.swift
//  Shared
//
//  Created by Ahmed Yamany on 06/11/2024.
//

import Foundation

public struct PasswordSpecialCharacterValidator: Validator {
    let value: Password
    public init(_ value: Password) {
        self.value = value
    }

    public func validate() throws {
        let specialCharacterRegex = ".*[!@#$%^&*(),.?\":{}|<>]+.*"
        let letterPredicate = NSPredicate(format: "SELF MATCHES %@", specialCharacterRegex)
        if !letterPredicate.evaluate(with: value.value) {
            throw PasswordSpecialCharacterError()
        }
    }
}

private struct PasswordSpecialCharacterError: Error, LocalizedError {
    var errorDescription: String? {
        "password should contain at least one special character"
    }
}
