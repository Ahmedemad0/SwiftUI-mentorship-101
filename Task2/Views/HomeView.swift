//
//  ContentView.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = MealsViewModel()
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                HeaderView(viewModel: viewModel)
                
                VStack(spacing: 20) {
                    
                    HorizontalSectionView(
                        title: nil,
                        items: viewModel.sections,
                        content: { section in
                            SectionCell(section: section)
                                .onTapGesture {
                                    coordinator.push(.profile)
                                }
                        }
                    )
                
                    
                    HorizontalSectionView(
                        title: "Yalla, find the best meals for you",
                        items: viewModel.meals,
                        content: { meal in
                            MealCell(meal: meal)
                        }
                    )
                    
                    HorizontalSectionView(
                        title: "Redeem and save",
                        items: viewModel.gifts,
                        content: { gift in
                            GiftCell(model: gift)
                        }
                    )
                    
                }
                .padding()
            }
            .task {
                viewModel.fetchSections()
                viewModel.fetchMeals()
                viewModel.fetchGifts()
            }
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    HomeView()
}
