//
//  OrderDetailsView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

struct OrderDetailsView: View {
    let model: OrderDetails

    var body: some View {
        HStack(spacing: Constants.hStackSpacing) {
            TalabatImage(imageName: model.imageName, height: Constants.imageSize, width: Constants.imageSize)

            TalabatText(
                text: model.name,
                textColor: .black,
                textWeight: .semibold,
                textSize: Constants.nameFontSize
            )
            
            Spacer()
            
            TalabatText(
                text: "EGP \(model.price)",
                textColor: .gray,
                textWeight: .semibold,
                textSize: Constants.priceFontSize
            )
        }
        .padding(.horizontal, Constants.horizontalPadding)
        .padding(.vertical, Constants.verticalPadding)
    }
}

private struct Constants {
    static let hStackSpacing: CGFloat = 12
    static let imageSize: CGFloat = 40
    static let nameFontSize: CGFloat = 14
    static let priceFontSize: CGFloat = 14
    static let horizontalPadding: CGFloat = 16
    static let verticalPadding: CGFloat = 8
}

#Preview {
    OrderDetailsView(model: OrderDetails(id: "123", imageName: "rest5", name: "Seafood Pizza", price: "350"))
}
