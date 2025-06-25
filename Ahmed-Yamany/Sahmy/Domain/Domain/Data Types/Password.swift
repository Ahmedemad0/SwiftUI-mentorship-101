//
//  File.swift
//  Utilities
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import Foundation

public struct Password {
    public var value: String

    public init(value: String) {
        self.value = value
    }
}

extension Password: Validator {
    public func validate() throws {
        let validator = ValidatorChainBuilder()
            .add(PasswordLengthValidator(self))
            .add(PasswordLetterValidator(self))
            .add(PasswordNumberValidator(self))
            .add(PasswordSpecialCharacterValidator(self))
            .build()

        try validator.validate()
    }
}

extension Password: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}
