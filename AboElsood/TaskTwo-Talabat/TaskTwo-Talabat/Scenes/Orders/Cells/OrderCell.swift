//
//  OrderCell.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import SwiftUI

struct OrderCell: View {
    @State private var isExpanded: Bool = false
    
    var order: OrderDomainModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(order.status)
                    .padding(4)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(2)
                Text(order.date)
            }
            .font(.footnote)
            .foregroundStyle(.gray)
            .padding()
            
            Divider().background(Color.gray.opacity(0.3))
            
            HStack {
                NetworkImage(urlString: order.resturantImage, width: 80, height: 80)
                    .padding(.leading)
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        ProBadge().isHidden(!order.isPro, remove: true)
                        Text(order.resurantName)
                            .font(.headline)
                    }
                    Text( "Order ID: "+order.orderID)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 16)
                
                Spacer()
                
                // Tappable area to collapse
                HStack(spacing: 4) {
                    Text("\(order.numberOfItems) Items")
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                }
                .padding()
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
            }
            
            if isExpanded {
                VStack(alignment: .leading, spacing: 4) {
                    ForEach(order.items) { item in
                        HStack(alignment: .center, spacing: 12) {
                            NetworkImage(urlString: item.image, width: 50, height: 50)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(item.name)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                            }
                            Spacer()
                            
                            PriceView(price: item.price)
                            .font(.caption)
                        }
                    }
                }.padding(20)
                    .transition(.opacity.combined(with: .identity))
            }
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        PriceView(price: order.totalPrice)
                        Text("View Details").underline().bold()
                    }
                    .font(.footnote)
                    Spacer()
                    Text("Order again")
                        .bold()
                        .padding(10)
                        .addBorders(radius: 20)
                }
                .padding()
                
                HStack {
                    Text("Rate")
                        .font(.footnote)
                        .bold()
                    Spacer()
                    RatingView()
                }
                .padding()
                .frame(height: 40)
                .background(.gray.opacity(0.1))
            }
        }
        .addBorders(radius: 20, color: .gray.opacity(0.5))
        .cornerRadius(20)
    }
}
