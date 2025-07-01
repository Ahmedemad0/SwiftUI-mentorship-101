//
//  OrdersView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import SwiftUI

struct OrdersView: View {
    @StateObject private var viewModel = OrderViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            OrderHeaderView()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(viewModel.orders) { orders in
                        OrderCell(orderModel: orders)
                    }
                }
            }.task {
                viewModel.fetchOders()
            }
        }.padding()
    }
}

struct OrderHeaderView: View {
    var body: some View {
        Text("Orders")
            .textStyle(size: 18, weight: .bold, color: .black)
    }
}

#Preview {
    OrdersView()
}
