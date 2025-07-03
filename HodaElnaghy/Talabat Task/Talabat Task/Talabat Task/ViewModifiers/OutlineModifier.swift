//
//  OutlineModifier.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct OutlineModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
                    .opacity(0.4)
                    .frame(width: 200, height: 60)
            )
    }
}

extension View {
    func outline() -> some View {
        self.modifier(OutlineModifier())
    }
}
