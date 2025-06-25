//
//  View.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

extension View {
    func borderOfCustomSearchBar(cornerRadius: CGFloat, color: Color) -> some View {
        background {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(color)
        }
    }
    
    func customPlaceholderStyle(text: String, show: Bool, color: Color) -> some View {
        modifier(PlaceholderStyle(show: show, placeholder: text, color: color))
    }
    
    func headerSectionStyle(size: CGFloat, weight: Font.Weight, color: Color) -> some View {
        modifier(HeaderSectionStyle(size: size, weight: weight, color: color))
        
    }
    
    func viewStyle(width: CGFloat, height: CGFloat, radius: CGFloat, color: Color, x: CGFloat? = nil, y: CGFloat? = nil) -> some View {
        modifier(ViewStyle(width: width, height: height, radius: radius, color: color, x: x, y: y))
    }
}


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

struct HeaderSectionStyle: ViewModifier {
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
