//
//  HomeView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI
struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            ZStack {
                PrimaryColor
                VStack {
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Deliver to Apartment")
                            Image(systemName: "chevron.down")
                        }
                        .padding(.horizontal)
                        .padding(.top, topPadding)
                        
                        SearchBar(text: $viewModel.searchText)
                        
                        VStack(spacing: 10) {
                            CategoriesSection(categories: viewModel.categories)
                                .frame(height: 120)
                                .padding(.top)
                            
                            BestSpotSection(
                                bestSpotsResturants: viewModel.bestSpots,
                                onFavoriteTapped: viewModel.onFavoriteTapped
                            )
                            .frame(height: 260)
                            
                            RedeemSection(points: viewModel.points, vouchersNumber: viewModel.vouchers)
                        }
                        .background(Color.white)
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}
