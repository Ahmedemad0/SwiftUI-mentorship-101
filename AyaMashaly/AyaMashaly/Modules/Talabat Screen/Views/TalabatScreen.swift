//
//  TalabatScreen.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct TalabatScreen: View {
    var body: some View {
        HeaderView()
        ScrollView {
            VStack(spacing: 0){
                CategoriesView()
                FoodRecommendationsView()
                RedeemView()
                AdsView()
            }
        }
    }
}

#Preview {
    TalabatScreen()
}


