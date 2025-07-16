//
//  TransactionView.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

// MARK: - View
struct TransactionView: View {
    let model: TransactionModel
    @State private var isBlurred: Bool = true

    var body: some View {
        HStack(alignment: .top, spacing: Constants.hStackSpacing) {
            ZStack(alignment: .bottomTrailing) {
                Image(model.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: Constants.iconSize, height: Constants.iconSize)
                    .clipShape(Circle())

                if !model.billPayment {
                    Image(systemName: Constants.directionIcon)
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: Constants.arrowSize, height: Constants.arrowSize)
                        .padding(Constants.arrowPadding)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .offset(x: Constants.arrowOffset, y: Constants.arrowOffset)
                }
            }

            VStack(alignment: .leading, spacing: Constants.vStackSpacing) {
                Text(model.tarnsactionName)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(model.transactionDate)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(Constants.dateOpacity))
            }

            Spacer()

            Text(model.transactionAmount)
                .foregroundColor(.white)
                .font(.system(size: Constants.amountFontSize, weight: .semibold))
                .blur(radius: isBlurred ? Constants.blurRadius : 0)
                .onTapGesture {
                    withAnimation {
                        isBlurred.toggle()
                    }
                }
        }
        .padding()
    }

    // MARK: - Constants
    private enum Constants {
        static let hStackSpacing: CGFloat = 12
        static let vStackSpacing: CGFloat = 4
        static let iconSize: CGFloat = 44
        static let arrowSize: CGFloat = 10
        static let arrowPadding: CGFloat = 6
        static let arrowOffset: CGFloat = 4
        static let directionIcon = "arrow.left"
        static let dateOpacity: Double = 0.7
        static let amountFontSize: CGFloat = 16
        static let blurRadius: CGFloat = 6
    }
}

// MARK: - Preview
#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        TransactionView(
            model: TransactionModel(
                imageName: "Vodafone",
                tarnsactionName: "Vodafone",
                transactionAmount: "EGP 240",
                transactionDate: "May 14, 2025 9:27 PM"
            )
        )
        .padding()
    }
}
