//
//  OrdersView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

import SwiftUI

struct OrdersView: View {
    let model: OrderModel
    @State private var isCollapsed: Bool = true

    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            mainContent
            ratingBar
        }
        .padding(.top, Constants.topPadding)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .stroke(Color.gray.opacity(Constants.borderOpacity), lineWidth: Constants.borderWidth)
        )
    }

    // MARK: - Main Content
    private var mainContent: some View {
        VStack(alignment: .leading, spacing: Constants.sectionSpacing) {
            statusAndArrival
            Divider()
                .padding(.horizontal, -Constants.horizontalPadding)
            orderHeader
                .padding(.vertical, Constants.verticalPadding)

            if !isCollapsed {
                orderDetailsList
            }

            orderFooter
                .padding(.bottom, Constants.bottomPadding)
        }
        .padding(.horizontal, Constants.horizontalPadding)
    }

    // MARK: - Status and Arrival
    private var statusAndArrival: some View {
        HStack(spacing: Constants.smallSpacing) {
            TalabatText(text: "Delivered", textColor: .gray, textWeight: .regular, textSize: Constants.badgeFontSize)
                .badgeStyle(background: Color.gray.opacity(Constants.badgeBackgroundOpacity))
            TalabatText(text: model.arrivalTime, textColor: .gray, textWeight: .regular, textSize: Constants.badgeFontSize)
        }
    }

    // MARK: - Order Header
    private var orderHeader: some View {
        HStack {
            TalabatImage(imageName: model.imageName, height: Constants.imageSize, width: Constants.imageSize)
            VStack(alignment: .leading) {
                HStack {
                    if model.isPro {
                        ProBadge()
                    }
                    TalabatText(text: model.returantName, textColor: .black, textWeight: .semibold, textSize: Constants.restaurantNameFontSize)
                }
                TalabatText(text: "Order ID: \(model.id)", textColor: .gray, textWeight: .regular, textSize: Constants.orderIdFontSize)
            }
            Spacer()
            if !model.orderDetails.isEmpty {
                toggleDetailsButton
            }
        }
    }

    // MARK: - Toggle Details Button
    private var toggleDetailsButton: some View {
        Button {
            isCollapsed.toggle()
        } label: {
            HStack {
                TalabatText(text: "\(model.orderDetails.count) items", textColor: .gray, textWeight: .semibold, textSize: Constants.toggleButtonFontSize)
                Image(systemName: isCollapsed ? "chevron.down" : "chevron.up")
                    .foregroundStyle(.black)
            }
        }
    }

    // MARK: - Order Details List
    private var orderDetailsList: some View {
        LazyVStack {
            ForEach(model.orderDetails, id: \.id) { item in
                OrderDetailsView(model: item)
                    .padding(.bottom, Constants.orderItemSpacing)
            }
        }
    }

    // MARK: - Order Footer
    private var orderFooter: some View {
        HStack {
            VStack(alignment: .leading, spacing: Constants.smallSpacing) {
                TalabatText(text: "EGP \(model.price)", textColor: .black, textWeight: .semibold, textSize: Constants.footerPriceFontSize)
                TalabatText(text: "View Details", textColor: .black, textWeight: .semibold, textSize: Constants.footerDetailsFontSize)
                    .underline()
            }
            Spacer()
            Button {
                
            } label: {
                TalabatText(text: "Order again", textColor: .black, textWeight: .semibold, textSize: Constants.orderAgainFontSize)
                    .outlinedButtonStyle()
            }
        }
    }

    // MARK: - Rating Bar
    private var ratingBar: some View {
        HStack(spacing: Constants.smallSpacing) {
            TalabatText(text: "Rate", textColor: .black, textWeight: .semibold, textSize: Constants.ratingTitleFontSize)
            Spacer()
            ForEach(0..<Constants.starCount, id: \.self) { _ in
                Image(systemName: "star")
                    .foregroundColor(Color.gray.opacity(Constants.starOpacity))
                    .font(.system(size: Constants.starFontSize))
            }
        }
        .padding(.horizontal, Constants.horizontalPadding)
        .frame(height: Constants.ratingBarHeight)
        .background(Color.gray.opacity(Constants.ratingBarBackgroundOpacity))
        .cornerRadius(Constants.ratingBarCornerRadius, corners: [.bottomLeft, .bottomRight])
    }
}


// MARK: - Constants & Colors

private struct Constants {
    static let topPadding: CGFloat = 16
    static let horizontalPadding: CGFloat = 16
    static let verticalPadding: CGFloat = 16
    static let bottomPadding: CGFloat = 16
    static let sectionSpacing: CGFloat = 8
    static let smallSpacing: CGFloat = 4

    static let imageSize: CGFloat = 60
    static let orderItemSpacing: CGFloat = 16
    static let cornerRadius: CGFloat = 12

    // Border
    static let borderOpacity: Double = 0.4
    static let borderWidth: CGFloat = 0.5
    
    // Badge
    static let badgeFontSize: CGFloat = 12
    static let badgeBackgroundOpacity: Double = 0.2

    // Fonts in Header
    static let restaurantNameFontSize: CGFloat = 18
    static let orderIdFontSize: CGFloat = 14

    // Toggle button font
    static let toggleButtonFontSize: CGFloat = 14

    // Footer fonts
    static let footerPriceFontSize: CGFloat = 14
    static let footerDetailsFontSize: CGFloat = 14
    static let orderAgainFontSize: CGFloat = 14

    // Pro badge
    static let proFontSize: CGFloat = 8

    // Rating Bar
    static let ratingTitleFontSize: CGFloat = 14
    static let starCount: Int = 5
    static let starFontSize: CGFloat = 14
    static let starOpacity: Double = 0.8
    static let ratingBarHeight: CGFloat = 50
    static let ratingBarBackgroundOpacity: Double = 0.1
    static let ratingBarCornerRadius: CGFloat = 16
}

#Preview {
    OrdersView(model: OrderModel(
        returantName: "Primo's Pizza",
        id: "1",
        imageName: "primos",
        price: "1000",
        orderDetails: [OrderDetails(id: "2", imageName: "rest5", name: "pepperoni", price: "350")],
        arrivalTime: "Today . 4:30pm", isPro: true))
}
