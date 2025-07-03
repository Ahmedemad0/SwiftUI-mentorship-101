//
//  HomeView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI
struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HomeHeaderView(topPadding: topPadding, searchText: $viewModel.searchText)
                    VStack(spacing: 10) {
                        CategoriesSection(categories: viewModel.categories){ category in
                            coordinator.push(.category(category))
                        }
                        .frame(height: 120)
                        .padding(.top)
                        BestSpotSection(
                            bestSpotsResturants: viewModel.bestSpots,
                            onFavoriteTapped: viewModel.onFavoriteTapped
                        )
                        
                        RedeemSection(points: viewModel.points, vouchersNumber: viewModel.vouchers)
                    }
                    .background(Color.white)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}
