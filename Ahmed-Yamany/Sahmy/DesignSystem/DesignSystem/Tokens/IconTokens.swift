//
//  IconTokens.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 20/06/2025.
//

import SwiftUI

public struct IconTokens: Sendable {
    public var email: Image
    public var lock: Image
    public var eye: Image
    public var closeEye: Image
}

public extension EnvironmentValues {
    @Entry
    var icons: IconTokens = IconTokens(
        email: Image(systemName: "envelope"),
        lock: Image(systemName: "lock"),
        eye: Image(systemName: "eye"),
        closeEye: Image(systemName: "eye.slash")
    )
}
