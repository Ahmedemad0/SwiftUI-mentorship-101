//
//  RestaurantView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct RestaurantView: View {
    let model: RestaurantUIModel
    var actionBlock: () -> Void = { }
    private let constants = RestaurantViewConstants()
    
    var body: some View {
        VStack(alignment: .leading, spacing: constants.mainStackSpacing) {
            ZStack(alignment: .bottomLeading) {
                ZStack(alignment: .topTrailing) {
                    ZStack(alignment: .topLeading) {
                        TalabatImage(
                            imageName: model.restauantImage,
                            height: constants.imageSize,
                            width: constants.imageSize)
                        
                        TalabatImage(
                            imageName: model.restaurantLogo,
                            height: constants.logoImageSize,
                            width: constants.logoImageSize)
                        .padding(constants.iconsPadding)
                    }
                    
                    FavoriteButton(isFavorite: model.isFavorited, didTapOnFavorite: actionBlock)
                        .padding(constants.iconsPadding)
                    
                }
                if model.offerLabel != nil {
                    offerView
                        .padding(constants.iconsPadding)
                }
            }
            VStack (alignment: .leading, spacing: 0) {
                HStack {
                    if model.isRestaurantPro {
                        TalabatImage(
                            imageName: constants.proImage,
                            height: constants.proImageSize,
                            width: constants.proImageSize)
                    }
                    TalabatText(text: model.restaurantName, textColor: .black, textWeight: .semibold, textSize: constants.restaurantNameFontSize)
                }
                
                HStack {
                    Image(systemName: constants.starImageNAme)
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: constants.proImageSize, height: constants.proImageSize)
                    TalabatText(text: model.restaurantRating, textColor: .black, textWeight: .semibold, textSize: constants.restaurantRatingFontSize)
                    TalabatText(text: "(\(model.restaurantReviewCount)+)", textColor: .gray, textWeight: .semibold, textSize: constants.restaurantRatingFontSize)
                }
            }
        }
        
        .frame(width: 200, height: 270)
    }
    
    @ViewBuilder
    private var offerView: some View {
        Text(model.offerLabel ?? "")
            .font(.caption)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color(red: 0.8, green: 1.0, blue: 0.4))
            .cornerRadius(4)
    }
}

#Preview {
    RestaurantView(
        model: RestaurantUIModel(
        restauantImage: "AsianCorner",
        restaurantLogo: "AsianCornerLogo",
        restaurantName: "Asian Corner",
        restaurantRating: "4.7",
        restaurantReviewCount: "1,000",
        offerLabel: "Buy 1 Get 1 Free",
        isRestaurantPro: true
        )
    )
}

private struct RestaurantViewConstants {
    let imageSize: CGFloat = 200
    let spacing: CGFloat = 8
    let proImage: String = "pro"
    let restaurantNameFontSize: CGFloat = 14
    let restaurantRatingFontSize: CGFloat = 12
    let proImageSize: CGFloat = 18
    let starImageNAme: String = "star.fill"
    let iconsPadding: CGFloat = 12
    let mainStackSpacing: CGFloat = 16
    let logoImageSize: CGFloat = 40
}

