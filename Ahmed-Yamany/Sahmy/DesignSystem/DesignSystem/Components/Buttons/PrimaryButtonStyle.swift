//
//  PrimaryButtonStyle.swift
//  Sahmy
//
//  Created by Ahmed Yamany on 19/06/2025.
//

import SwiftUI
public struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.colors) private var colors: ColorTokens

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .frame(height: 54)
            .background(backgroundColor(configuration))
            .clipShape(.rect(cornerRadius: 8))
            .foregroundStyle(colors.primaryButtonForeground)
            .setFont(.caption1)
    }

    private func backgroundColor(_ configuration: Configuration) -> Color {
        if !isEnabled {
            colors.primaryButtonDisablesBackground
        } else if configuration.isPressed {
            colors.primaryButtonOnPressBackground
        } else {
            colors.primaryButtonBackground
        }
    }
}

public extension ButtonStyle where Self == PrimaryButtonStyle {
    static func primary() -> PrimaryButtonStyle {
        .init()
    }
}

#Preview(body: {
    Button {
    } label: {
        HStack {
            Text("Hello, World!")
        }
    }
    .buttonStyle(.primary())
    .padding()
})
