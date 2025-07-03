//
//  Borders.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import SwiftUI

struct Borders : ViewModifier {
    var width : CGFloat
    var radius : CGFloat
    var color : Color
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: radius).stroke(color,lineWidth: width)
            }
    }
}

extension View {
    func addBorders(radius:CGFloat,width: CGFloat = 1,color:Color = .black) -> some View{
        self.modifier(Borders(width: width, radius: radius, color: color))
    }
}
