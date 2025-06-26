//
//  FavoriteButton.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct FavoriteButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill()
                .foregroundStyle(.white)
                .frame(width: 30, height: 30)
            
            Image(systemName: "heart")
                .foregroundColor(.black)
                .frame(width: 18, height: 18)
        }
    }
}

#Preview {
    FavoriteButton()
}
