//
//  RestaurantView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct RestaurantView: View {
    let restauantImage: String
    let restaurantLogo: String
    let restaurantName: String
    let restaurantRating: String
    let restaurantReviewCount: String
    let offerLabel: String?
    let isRestaurantPro: Bool
    
    private let constants = RestaurantViewConstants()
    
    var body: some View {
        VStack(alignment: .leading, spacing: constants.mainStackSpacing) {
            ZStack(alignment: .bottomLeading) {
                ZStack(alignment: .topTrailing) {
                    ZStack(alignment: .topLeading) {
                        TalabatImage(
                            imageName: restauantImage,
                            height: constants.imageSize,
                            width: constants.imageSize)
                        
                        TalabatImage(
                            imageName: restaurantLogo,
                            height: constants.logoImageSize,
                            width: constants.logoImageSize)
                        .padding(constants.iconsPadding)
                    }
                    
                    FavoriteButton()
                        .padding(constants.iconsPadding)
                    
                }
                if offerLabel != nil {
                    offerView
                        .padding(constants.iconsPadding)
                }
            }
            VStack (alignment: .leading, spacing: 0) {
                HStack {
                    if isRestaurantPro {
                        TalabatImage(
                            imageName: constants.proImage,
                            height: constants.proImageSize,
                            width: constants.proImageSize)
                    }
                    TalabatText(text: restaurantName, textColor: .black, textWeight: .semibold, textSize: constants.restaurantNameFontSize)
                }
                
                HStack {
                    Image(systemName: constants.starImageNAme)
                        .resizable()
                        .foregroundStyle(.yellow)
                        .frame(width: constants.proImageSize, height: constants.proImageSize)
                    TalabatText(text: restaurantRating, textColor: .black, textWeight: .semibold, textSize: constants.restaurantRatingFontSize)
                    TalabatText(text: "(\(restaurantReviewCount)+)", textColor: .gray, textWeight: .semibold, textSize: constants.restaurantRatingFontSize)
                }
            }
        }
    }
    
    @ViewBuilder
    private var offerView: some View {
        Text(offerLabel ?? "")
            .font(.caption)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color(red: 0.8, green: 1.0, blue: 0.4))
            .cornerRadius(4)
    }
}

#Preview {
    RestaurantView(
        restauantImage: "AsianCorner",
        restaurantLogo: "AsianCornerLogo",
        restaurantName: "Asian Corner",
        restaurantRating: "4.7",
        restaurantReviewCount: "1,000",
        offerLabel: "Buy 1 Get 1 Free",
        isRestaurantPro: true
    )
}

private struct RestaurantViewConstants {
    let imageSize: CGFloat = 200
    let spacing: CGFloat = 8
    let proImage: String = "pro"
    let restaurantNameFontSize: CGFloat = 18
    let restaurantRatingFontSize: CGFloat = 16
    let proImageSize: CGFloat = 18
    let starImageNAme: String = "star.fill"
    let iconsPadding: CGFloat = 12
    let mainStackSpacing: CGFloat = 16
    let logoImageSize: CGFloat = 40
}

