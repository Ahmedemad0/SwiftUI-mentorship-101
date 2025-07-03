//
//  OrdersView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

import SwiftUI

struct OrdersScreen: View {
    @StateObject private var viewModel = OrdersViewModel()
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            header
            ordersList
            bottomBanner
        }
    }
    
    // MARK: - Header View
    private var header: some View {
        TalabatText(
            text: "Orders",
            textColor: .black,
            textWeight: .semibold,
            textSize: Constants.headerFontSize
        )
        .padding(.top, Constants.headerTopPadding)
        .padding(.horizontal, Constants.horizontalPadding)
    }
    
    // MARK: - Orders List
    private var ordersList: some View {
        ScrollView {
            LazyVStack(spacing: Constants.ordersListSpacing) {
                ForEach(viewModel.ordersModel, id: \.id) { order in
                    OrdersView(model: order)
                }
            }
            .padding()
        }
        .onAppear {
            viewModel.getData()
        }
    }
    
    // MARK: - Bottom Banner
    private var bottomBanner: some View {
        HStack {
            ProBadge()
            TalabatText(
                text: "Get free delivery & exclusive deals",
                textColor: .proPurple,
                textWeight: .medium,
                textSize: Constants.bannerTextSize
            )
            Spacer()
            TalabatText(
                text: "Try free",
                textColor: .black,
                textWeight: .medium,
                textSize: Constants.bannerTextSize
            )
            .underline()
        }
        .padding()
        .background(Color.bannerBackground)
        .cornerRadius(Constants.bannerCornerRadius, corners: [.topLeft, .topRight])
    }
}


// MARK: - Constants
private struct Constants {
    static let headerFontSize: CGFloat = 16
    static let headerTopPadding: CGFloat = 16
    static let horizontalPadding: CGFloat = 16
    static let ordersListSpacing: CGFloat = 16
    
    static let bannerTextSize: CGFloat = 12
    static let bannerCornerRadius: CGFloat = 16
}


#Preview {
    OrdersScreen()
}
