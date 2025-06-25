//
//  View+sahmyScreenDesign.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 10/04/2025.
//

import SwiftUI

private struct SetupScreenDesignModifier: ViewModifier {
    @Environment(\.colors) private var colors

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(colors.primaryBackground)
            .foregroundStyle(colors.primaryText)
            .tint(colors.tint)
            
    }
}

public extension View {
    func sahmyScreenDesign() -> some View {
        modifier(SetupScreenDesignModifier())
    }
}
