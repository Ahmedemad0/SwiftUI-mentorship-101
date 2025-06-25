//
//  AnyValidator.swift
//  Shared
//
//  Created by Ahmed Yamany on 31/10/2024.
//

import Foundation

public final class AnyValidator: Validator {
    private let _validate: () throws -> Void

    public init<V: Validator>(_ validator: V){
        _validate = validator.validate
    }

    public func validate() throws {
        try _validate()
    }
}
