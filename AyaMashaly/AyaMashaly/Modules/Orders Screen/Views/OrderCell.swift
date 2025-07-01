//
//  OrderCell.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import SwiftUI

struct OrderCell: View {
    let orderModel: OrderModel
    
    var body: some View {
        VStack(alignment: .leading) {
            DeliveryInfoView(model: orderModel.deliveryInfo)
                .padding(.leading)
            SeparatorView()
            OrderSummaryView(model: orderModel.summary)
                .padding(.horizontal)
                .padding(.top, 5)
            OrderDetailsView(model: orderModel.details)
                .padding(.all)
            
            if orderModel.ratingInfo.isRated {
                RatedView(model: orderModel.ratingInfo)
            } else {
                RatingView()
            }
        }
        .padding(.top)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.darkTextGray, lineWidth: 0.4)
        )
        .padding(8)
    }
}

struct DeliveryInfoView: View {
    let model: DeliveryInfoModel
    
    var body: some View {
        HStack {
            Text(model.deliveryStatus)
                .padding(.all, 5)
                .background(.gray.opacity(0.1))
                .cornerRadius(4)
            Text(model.deliveryTime)
        }
        .textStyle(size: 14, weight: .medium, color: .darkTextGray)
    }
}

struct SeparatorView: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray.opacity(0.2))
    }
}

struct OrderSummaryView: View {
    let model: OrderSummaryModel
    
    var body: some View {
        HStack{
            Image(model.logoOfRestaurant)
                .resizable()
                .frame(width: 40, height: 40)
            OrderInfoView(model: model.orderInfo)
            Spacer()
            ItemView(model: model.item)
        }
    }
}

struct OrderInfoView: View {
    let model: OrderInfoModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            RestaurantView(model: model.restaurantInfo)
            Text("Order ID: \(model.orderId)")
                .textStyle(size: 12, weight: .regular, color: .darkTextGray)
        }
    }
}

struct RestaurantView: View {
    let model: RestaurantModel
    
    var body: some View {
        HStack {
            if model.isPro {
                Text("pro")
                    .textStyle(size: 10, weight: .bold, color: .white)
                    .padding(.horizontal, 3)
                    .padding(.vertical, 2)
                    .background(.backgroundColor1)
                    .cornerRadius(2)
                    .rotationEffect(.degrees(-3))
            }
            
            Text(model.restaurantName)
                .textStyle(size: 14, weight: .medium, color: .black)
        }
    }
}

struct ItemView: View {
    let model: ItemModel
    
    var body: some View {
        HStack {
            Text("\(model.itemCount) items")
                .textStyle(size: 14, weight: .medium, color: .darkTextGray)
            Image(.arrowDown)
                .resizable()
                .foregroundStyle(.black)
                .frame(width: 20, height: 20)
        }
    }
}

struct OrderDetailsView:View {
    let model: OrderDetailsModel
    
    var body: some View {
        HStack {
            VStack(spacing: 5) {
                HStack {
                    Text("EGP")
                        .textStyle(size: 14, weight: .medium, color: .darkTextGray)
                    
                    Text(model.price)
                        .textStyle(size: 14, weight: .medium, color: .black)
                }
                
                Button(action: {
                    
                }) {
                    Text("View details")
                        .underline()
                        .textStyle(size: 14, weight: .medium, color: .black)
                }
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Order again")
                    .textStyle(size: 14, weight: .medium, color: .black)
            }
            .padding(.all, 8)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 0.5)
            )
        }
    }
}

struct RatingView: View {
    @State private var selectedRating: Int = 0
    
    var body: some View {
        HStack {
            Text("Rate")
                .textStyle(size: 14, weight: .medium, color: .black)
            
            Spacer()
            
            HStack(spacing: 16) {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: index <= selectedRating ? "star.fill" :"star")
                        .foregroundColor(index <= selectedRating ? .yellow :.gray)
                        .frame(width: 12, height: 12)
                        .onTapGesture {
                            if selectedRating == index {
                                selectedRating = index - 1
                            } else {
                                selectedRating = index
                            }
                        }
                }
            }
        }
        .padding(.horizontal)
        .frame(height: 45)
        .background(Color.gray.opacity(0.1))
    }
}

struct RatedView: View {
    let model: RatingInfoModel
    
    var body: some View {
        HStack(spacing: 15) {
            Spacer()
            Text("You rated \(model.rating ?? 0)/5")
                .textStyle(size: 16, weight: .regular, color: .darkTextGray)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8, height: 8)
            Spacer()
        }
        .frame(height: 45)
        .background(Color.gray.opacity(0.1))
    }
}
