//
//  OrderView.swift
//  Task2
//
//  Created by OSX on 02/07/2025.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var viewModel = OrderViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 8) {
                    ForEach(viewModel.orders) { order in
                        VStack(alignment: .leading, spacing: 12) {
                            OrderStatusView(order:order)
                            Divider()
                                .frame(maxWidth: .infinity)
                            OrderProductInfoView(order:order)
                            OrderPriceAndActionsView(order:order)
                            OrderRatingView(order:order)
                        }
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
                    }
                }
                .padding(.horizontal)
            }
            .task {
                viewModel.fetchOrders()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
