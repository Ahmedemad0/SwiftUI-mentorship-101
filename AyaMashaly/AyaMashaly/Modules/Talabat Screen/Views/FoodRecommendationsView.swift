//
//  FoodRecommendationsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import SwiftUI

struct FoodRecommendationsView: View {
    @StateObject private var viewModel = TalabatViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Yalla, find the best spots for you")
                .headerSectionStyle(size: 18, weight: .medium, color: .black)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.foodRecommended) { foodRecommended in
                        FoodRecommendationsCell(foodRecommendationsModel: foodRecommended)
                    }
                }
            }
        }
        .padding()
        .onAppear{
            viewModel.fetchFoodRecommended()
        }
    }
}

#Preview {
    FoodRecommendationsView()
}
