//
//  ProvidersView.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

// MARK: - View
struct ProvidersView: View {
    let model: ProviderModel

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(model.backgroundImage)
                .resizable()
                .scaledToFill()
                .frame(width: Constants.cardWidth, height: Constants.cardHeight)
                .clipped()

            VStack {
                ZStack(alignment: .leading) {
                    Color.black.opacity(Constants.overlayOpacity)

                    VStack(alignment: .leading, spacing: Constants.textSpacing) {
                        Image(model.providerImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: Constants.iconSize, height: Constants.iconSize)
                            .clipShape(Circle())

                        Text(model.providerName)
                            .font(.headline)
                            .foregroundColor(.white)

                        Text(model.type)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(Constants.secondaryTextOpacity))

                        Spacer()
                    }
                    .padding(.horizontal, Constants.horizontalPadding)
                    .padding(.top, Constants.topPadding)
                }
            }
            .frame(width: Constants.cardWidth, height: Constants.infoSectionHeight)
        }
        .cornerRadius(Constants.cornerRadius)
        .clipped()
    }

    // MARK: - Constants

    private enum Constants {
        static let cardWidth: CGFloat = 150
        static let cardHeight: CGFloat = 250
        static let infoSectionHeight: CGFloat = 100
        static let iconSize: CGFloat = 30
        static let overlayOpacity: Double = 0.6
        static let secondaryTextOpacity: Double = 0.8
        static let textSpacing: CGFloat = 4
        static let horizontalPadding: CGFloat = 16
        static let topPadding: CGFloat = -15
        static let cornerRadius: CGFloat = 16
    }
}

// MARK: - Preview
#Preview {
    ProvidersView(
        model: ProviderModel(
            providerName: "Zara",
            providerImage: "zaraLogo",
            backgroundImage: "zara",
            type: "Shopping"
        )
    )

}
