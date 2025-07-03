//
//  OutlinedButtonStyle.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

import SwiftUI

struct OutlinedButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 16)
            .frame(height: 40)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 0.7)
            )
    }
}

extension View {
    func outlinedButtonStyle() -> some View {
        self.modifier(OutlinedButtonStyle())
    }
}
