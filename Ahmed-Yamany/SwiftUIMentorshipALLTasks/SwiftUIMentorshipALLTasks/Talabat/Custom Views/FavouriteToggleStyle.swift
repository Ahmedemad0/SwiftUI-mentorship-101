//
//  FavouriteToggleStyle.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

struct FavouriteToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: configuration.isOn ? "heart.fill" : "heart")
                .foregroundStyle(configuration.isOn ? .red : .black)
                .padding(4)
                .background(.white, in: .circle)
        }
    }
}
