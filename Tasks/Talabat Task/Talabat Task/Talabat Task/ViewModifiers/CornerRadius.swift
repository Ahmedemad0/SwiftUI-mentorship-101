//
//  CornerRadius.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

struct RoundedCorners: Shape {
    var radius: CGFloat = 16
    var corners: UIRectCorner = [.topLeft, .topRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct CornerRadiusModifier: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(RoundedCorners(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        self.modifier(CornerRadiusModifier(radius: radius, corners: corners))
    }
}

