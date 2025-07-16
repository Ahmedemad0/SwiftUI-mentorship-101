//
//  CircleProfile.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

extension View {
    func circleProfileStyle() -> some View {
        self
            .frame(width: 40, height: 40)
            .font(.system(size: 14))
            .foregroundStyle(.white)
            .background(
                Circle().fill(Color.gray.opacity(0.2))
            )
            .addBorders(radius: 20, color: .gray)
    }
}
