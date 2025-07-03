//
//  BestSpotCell.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI
import Kingfisher
struct BestSpotCell: View {
    var restorant: BestSpotsDomainModel
    var onFavoriteTapped: (Int) -> Void

    @State private var isFavorited: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .top) {
                NetworkImage(urlString: restorant.mealImage, width: 150, height: 170)
                    .cornerRadius(10)

                HStack {
                    NetworkImage(urlString: restorant.restaurantImage, width: 30, height: 30)

                    Spacer()

                    Button(action: {
                        isFavorited.toggle()
                        onFavoriteTapped(restorant.id)
                    }) {
                        Image(systemName: isFavorited ? "heart.fill" : "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .padding(8)
                            .foregroundColor(isFavorited ? PrimaryColor : .gray)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    .frame(width: 30, height: 30)
                }
                .padding(10)
            }

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    ProBadge()
                        .isHidden(restorant.isPro, remove: true)

                    Text(restorant.bestSellerMeal)
                        .lineLimit(1)
                        .font(.system(size: 16).bold())
                }

                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text(restorant.ratings)
                        .font(.system(size: 14).bold())
                    Text("(\(restorant.ratingsCount))")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
            }
            .frame(width: 150)
        }
    }
}
