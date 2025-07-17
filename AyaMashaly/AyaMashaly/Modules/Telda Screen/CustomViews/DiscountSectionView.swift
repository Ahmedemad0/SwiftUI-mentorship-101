//
//  DiscountSectionView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 16/07/2025.
//

import SwiftUI

struct DiscountSectionView: View {
    @ObservedObject var viewModel: TeldaViewModel
    @State private var showAll = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Shop with discounts")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(showAll ? viewModel.discounts : Array(viewModel.discounts.prefix(4))) { discount in
                        DiscountCard(model: discount)
                    }
                }
            }
            
            HStack {
                Spacer()
                if !viewModel.discounts.isEmpty {
                    Button(showAll ? "See less" : "See all") {
                        withAnimation(.easeInOut) {
                            showAll.toggle()
                        }
                    }
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                }
                Spacer()
            }
        }
        .padding()
        .background(Color.black.opacity(0.6))
        .cornerRadius(20)
        .offset(y: -10)
        .task {
            viewModel.fetchDiscounts()
        }
    }
}

struct DiscountCard: View {
    var model: DiscountModel
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Color.gray.opacity(0.8)
                    .frame(height: 70)
                
                VStack(spacing: 2) {
                    Text(model.title)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.top)
                    Text(model.subtitle)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.white)
                }
                
                Image(model.iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .background(Color.clear)
                    .offset(y: -30)
            }
        }
        .frame(width: 100, height: 140)
        .background(
            Image(model.backgroundImage)
                .resizable()
                .scaledToFill()
        )
        .cornerRadius(15)
    }
}

#Preview {
    DiscountSectionView(viewModel: TeldaViewModel())
}
