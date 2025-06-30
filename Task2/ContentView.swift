//
//  ContentView.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = MealsViewModel()
    
#warning("Disappointed for seeing all the view in the same body")
    var body: some View {
        NavigationStack {
            ScrollView {
                
                HeaderView(viewModel: viewModel)
                
                VStack(spacing: 20) {
#warning("Why u used .onAppear")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(viewModel.sections) { section in
                                SectionCell(section: section)
                            }
                        }
                    }
                    .onAppear {
                        viewModel.fetchSections()
                    }
                    
                    Text("Yalla, find the best meals for you")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 8)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            
                            ForEach(viewModel.meals) { meal in
                                MealCell(meal: meal)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .onAppear {
                        viewModel.fetchMeals()
                    }
                    
                    Text("Redeem and save")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 8)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            
                            ForEach(viewModel.gifts) { gift in
                                GiftCell(model: gift)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .onAppear {
                        viewModel.fetchGifts()
                    }
                }
                .padding()
            }
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
