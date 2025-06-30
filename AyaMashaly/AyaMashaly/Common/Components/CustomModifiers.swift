//
//  CustomModifiers.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 29/06/2025.
//

import SwiftUI

struct PlaceholderStyle: ViewModifier {
    var show: Bool
    var placeholder: String
    var color: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if show {
                Text(placeholder)
                    .foregroundColor(color)
            }
            content
                .foregroundColor(.gray)
        }
    }
}

struct TextStyle: ViewModifier {
    let size: CGFloat
    let weight: Font.Weight
    let color: Color
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight))
            .foregroundStyle(color)
    }
}

struct ViewStyle: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    let radius: CGFloat
    let color: Color
    let x: CGFloat?
    let y: CGFloat?
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .background(color)
            .cornerRadius(radius)
            .offset(x: x ?? 0, y: y ?? 0)
    }
}
