//
//  PlainButtonStyle.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 20/06/2025.
//
import SwiftUI

public struct PlainButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.colors) private var colors


    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .buttonStyle(.plain)
            .foregroundStyle(foreground(configuration))
            .setFont(.caption2, weight: .bold)
    }

    private func foreground(_ configuration: Configuration) -> Color {
        if configuration.isPressed || !isEnabled {
            colors.primaryButtonOnPressBackground
        } else {
            colors.primary
        }
    }
}

public extension ButtonStyle where Self == PlainButtonStyle {
    static func plain() -> PlainButtonStyle {
        .init()
    }
}
