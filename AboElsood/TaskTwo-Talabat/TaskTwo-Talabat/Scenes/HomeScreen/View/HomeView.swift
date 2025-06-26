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
#warning("Make the primary color only in header scope")

                PrimaryColor
                
                VStack {
#warning("It would be better if u made this view and searchBar in a separate view like HomeHeaderView")
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
#warning("U don't need to add specific height...")
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
