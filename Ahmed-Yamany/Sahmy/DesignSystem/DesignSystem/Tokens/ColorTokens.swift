//
//  ColorTokens.swift
//  Sahmy
//
//  Created by Ahmed Yamany on 19/06/2025.
//

import SwiftUI

public struct ColorTokens: Sendable {
    public var primary: Color
    public let tint: Color
    public let primaryBackground: Color
    public let primaryText: Color
    public let secondaryText: Color

    // MARK: - Primary Button

    public var primaryButtonBackground: Color
    public var primaryButtonOnPressBackground: Color
    public var primaryButtonDisablesBackground: Color
    public var primaryButtonForeground: Color
    
    public var primaryTextFieldBackground: Color
}

public extension EnvironmentValues {
    @Entry
    var colors: ColorTokens = ColorTokens(
        primary: .bluebell,
        tint: .bluebell,
        primaryBackground: .pureWhite,
        primaryText: .primary,
        secondaryText: .secondary,
        primaryButtonBackground: .bluebell,
        primaryButtonOnPressBackground: .bluebell.opacity(0.3),
        primaryButtonDisablesBackground: .bluebell.opacity(0.3),
        primaryButtonForeground: .white,
        primaryTextFieldBackground: .gray.opacity(0.2)
    )
}
