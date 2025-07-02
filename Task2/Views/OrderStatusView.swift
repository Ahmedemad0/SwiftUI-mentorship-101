//
//  OrderStatusView.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import SwiftUI

struct OrderStatusView: View {
    
    let order: OrderModel
    
    var body: some View {
        HStack {
            Text(order.status)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.green)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.green.opacity(0.1))
                .cornerRadius(4)
            
            Text(order.time)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.top, 12)
        .padding(.horizontal, 12)
    }
}

