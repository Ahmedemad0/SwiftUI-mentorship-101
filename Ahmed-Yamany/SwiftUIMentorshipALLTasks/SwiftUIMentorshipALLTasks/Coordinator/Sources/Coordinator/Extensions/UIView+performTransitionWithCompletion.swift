//
//  File.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 28/03/2025.
//

import SwiftUI

internal extension UIView {
    static func performTransitionWithCompletion(
        animated: Bool,
        action: @MainActor () -> Void,
        completion: (() -> Void)?
    ) {
        var transaction = Transaction()

        UIView.performWithTransaction({ @MainActor in
            transaction.disablesAnimations = !animated

            withTransaction(transaction) {
                action()
            }
        }, completion: completion)
    }
}
