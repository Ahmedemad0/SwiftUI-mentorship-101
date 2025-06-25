//
//  Email.swift
//  Domain
//
//  Created by Ahmed Yamany on 28/03/2025.
//
import Foundation

public struct Email: Sendable {
    public var value: String

    public init(value: String) {
        self.value = value
    }
}

extension Email: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Email: Validator {
    public func validate() throws {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        if !value.validates(to: emailRegEx) {
            throw InvalidEmailError()
        }
    }
}

struct InvalidEmailError: Error, LocalizedError {
    var errorDescription: String? {
        "Please Enter A Valid Email"
    }
}
