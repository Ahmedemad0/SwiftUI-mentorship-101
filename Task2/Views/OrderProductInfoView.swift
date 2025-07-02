//
//  OrderProductInfoView.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import SwiftUI

struct OrderProductInfoView: View {
    
    let order: OrderModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(order.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(8)
                .clipped()
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(order.storeName)
                        .fontWeight(.semibold)
                    
                    Text("Order ID: \(order.orderId)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text("\(order.itemsCount) items")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Image("down-arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                }
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding(.horizontal, 8)
    }
}


