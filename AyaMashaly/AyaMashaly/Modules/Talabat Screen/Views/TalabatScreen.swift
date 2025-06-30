//
//  TalabatScreen.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct TalabatScreen: View {
    @StateObject var viewModel = TalabatViewModel()
    
    var body: some View {
        HeaderView()
        ScrollView {
            VStack(spacing: 0){
                CategoriesView(viewModel: viewModel)
                FoodRecommendationsView(viewModel: viewModel)
                RedeemView(viewModel: viewModel)
                AdsView()
            }
        }
    }
}

#Preview {
    TalabatScreen()
}


