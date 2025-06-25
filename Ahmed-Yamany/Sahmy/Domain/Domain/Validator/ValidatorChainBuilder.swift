//
//  ValidatorChainBuilder.swift
//  Shared
//
//  Created by Ahmed Yamany on 31/10/2024.
//

import Foundation

public class ValidatorChainBuilder {
    private var validators: [AnyValidator] = []

    public init() { }

    public func add<V: Validator>(_ validator: V) -> Self {
        validators.append(AnyValidator(validator))
        return self
    }

    public func build() -> ValidatorChain {
        return ValidatorChain(validators)
    }
}
