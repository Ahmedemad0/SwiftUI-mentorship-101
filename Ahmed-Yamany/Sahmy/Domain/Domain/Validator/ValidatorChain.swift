//
//  ValidatorChain.swift
//  Shared
//
//  Created by Ahmed Yamany on 31/10/2024.
//

import Foundation

public final class ValidatorChain: Validator {
    private var validators: [AnyValidator]

    public init(_ validators: [AnyValidator]) {
        self.validators = validators
    }

    public func validate() throws {
        if let firstValidator = validators.first {
            try firstValidator.validate()
        }

        let remainingValidators = Array(validators.dropFirst())
        if !remainingValidators.isEmpty {
            try ValidatorChain(remainingValidators).validate()
        }
    }
}
