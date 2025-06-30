//
//  FoodRecommendationsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import SwiftUI

struct FoodRecommendationsView: View {
    
    @ObservedObject var viewModel: TalabatViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Yalla, find the best spots for you")
                .textStyle(size: 18, weight: .medium, color: .black)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.foodRecommended) { foodRecommended in
                        FoodRecommendationsCell(foodRecommendationsModel: foodRecommended)
                    }
                }
            }
        }
        .padding()
        .task {
            viewModel.fetchFoodRecommended()
        }
    }
}

#Preview {
    FoodRecommendationsView(viewModel: TalabatViewModel())
}
