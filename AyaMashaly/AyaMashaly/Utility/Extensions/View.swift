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
    
    func placeholderStyle(text: String, show: Bool, color: Color) -> some View {
        modifier(PlaceholderStyle(show: show, placeholder: text, color: color))
    }
    
    func textStyle(size: CGFloat, weight: Font.Weight, color: Color) -> some View {
        modifier(TextStyle(size: size, weight: weight, color: color))
        
    }
    
    func viewStyle(width: CGFloat, height: CGFloat, radius: CGFloat, color: Color, x: CGFloat? = nil, y: CGFloat? = nil) -> some View {
        modifier(ViewStyle(width: width, height: height, radius: radius, color: color, x: x, y: y))
    }
}
