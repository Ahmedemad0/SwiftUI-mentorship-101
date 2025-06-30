//
//  Modifiers.swift
//  Task2
//
//  Created by OSX on 30/06/2025.
//

import SwiftUI

extension View {
    func roundedImageStyle(width: CGFloat, height: CGFloat, cornerRadius: CGFloat = 10) -> some View {
        self
            .frame(width: width, height: height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
