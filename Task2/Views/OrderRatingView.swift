//
//  OrderRatingView.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import SwiftUI

struct OrderRatingView: View {
    
    let order: OrderModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Text("You rated \(order.rate)")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundColor(.yellow)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.1))
    }
    
}


