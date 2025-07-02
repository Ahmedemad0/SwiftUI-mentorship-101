//
//  OrderPriceAndActionsView.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import SwiftUI

struct OrderPriceAndActionsView: View {
    
    let order: OrderModel
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .center, spacing: 4) {
                HStack(spacing: 2) {
                    Text(order.currency)
                    Text("\(order.price)")
                        .fontWeight(.semibold)
                }
                
                Button {
                    print("View Details")
                } label: {
                    Text("View Details")
                        .foregroundColor(.black)
                        .underline()
                }
            }
            
            Spacer()
            
            Button {
                print("Order Again")
            } label: {
                Text("Order again")
                    .foregroundColor(.black)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
            }
        }
        .padding(.horizontal, 8)
    }
}
