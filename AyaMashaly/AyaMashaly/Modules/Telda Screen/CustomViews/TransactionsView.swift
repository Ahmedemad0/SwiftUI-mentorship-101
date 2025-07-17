//
//  TransactionsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 16/07/2025.
//

import SwiftUI

struct TransactionsView: View {
    @ObservedObject var viewModel: TeldaViewModel
    @State private var showAll = false
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(spacing: 10) {
                ForEach(showAll ? viewModel.transactions : Array(viewModel.transactions.prefix(3))) { transaction in
                    TransactionCard(model: transaction)
                }
                
                if !viewModel.transactions.isEmpty {
                    Button(showAll ? "See less" : "See all") {
                        withAnimation(.easeInOut) {
                            showAll.toggle()
                        }
                    }
                    .foregroundColor(.blue)
                    .padding(.top, 5)
                }
                
            }
            .padding()
            .background(Color.black.opacity(0.6))
            .cornerRadius(20)
            .offset(y: -10)
            .task {
                viewModel.fetchTransactions()
            }
        }
    }
}

struct TransactionCard: View {
    var model: TransactionModel
    
    var body: some View {
        HStack {
            
            Image(model.iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding(.trailing, 10)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(model.title)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.white)
                Text(model.time)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.white.opacity(0.6))
            }
            Spacer()
            Text(model.amount)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
                .blur(radius: 4)
        }
    }
}

#Preview {
    TransactionsView(viewModel: TeldaViewModel())
}
