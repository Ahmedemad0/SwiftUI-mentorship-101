//
//  OrdersView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct OrdersView: View {
    
    @StateObject private var viewModel = OrdersViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Orders")
                .font(.headline)
                .padding()
            ScrollView {
                LazyVStack(spacing: 16, pinnedViews: []) {
                    ForEach(viewModel.orders) { order in
                        OrderCell(order: order)
                    }
                }
                .padding(.horizontal)
            }
            HStack{
                ProBadge()
                Text("Get free delivery & exclusive offers")
                    .foregroundStyle(.purple)
                Spacer()
                Text("Try free")
                    .underline()
            }
            .font(.footnote.bold())
            .padding()
            .background(.purple.opacity(0.1))
        }.padding(.bottom,1)
    }
}
