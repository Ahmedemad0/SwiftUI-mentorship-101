//
//  FavoriteButton.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct FavoriteButton: View {
    var isFavorite: Bool
    var didTapOnFavorite: (() -> Void)?
    var body: some View {
        ZStack {
            Circle()
                .fill()
                .foregroundStyle(.white)
                .frame(width: 30, height: 30)
            
            Image(systemName: isFavorite ?  "heart.fill" : "heart")
                .foregroundColor(.black)
                .frame(width: 18, height: 18)
            
        }
        .onTapGesture {
            guard let didTapOnFavorite = didTapOnFavorite else { return }
            didTapOnFavorite()
            
        }
        
    }
}

#Preview {
    FavoriteButton(isFavorite: false)
}
