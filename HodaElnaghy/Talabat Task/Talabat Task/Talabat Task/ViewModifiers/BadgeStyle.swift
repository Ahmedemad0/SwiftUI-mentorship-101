//
//  BadgeStyle.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI
 
struct BadgeStyle: ViewModifier {
    let background: Color

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 4)
            .padding(.vertical, 2)
            .background(background)
            .cornerRadius(4)
    }
}

extension View {
    func badgeStyle(background: Color) -> some View {
        modifier(BadgeStyle(background: background))
    }
}
