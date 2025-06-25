//
//  FoodRecommendationsCell.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import SwiftUI

struct FoodRecommendationsCell: View {
    var foodRecommendationsModel: FoodRecommendationsModel
    @State private var isTapped: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            ZStack {
                Image(foodRecommendationsModel.image)
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                
                ZStack {
                    Image(foodRecommendationsModel.logo)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .viewStyle(width: 40, height: 40, radius: 15, color: .white, x: -45, y: -30)
                
                
                Button(action: {
                    isTapped.toggle()
                    print("heart tapped")
                })
                {
                    ZStack {
                        Image(systemName: isTapped ? "heart.fill" : "heart")
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.black)
                    }
                }
                .viewStyle(width: 30, height: 30, radius: 15, color: .white, x: 50, y: -30)
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(foodRecommendationsModel.title)
                    .headerSectionStyle(size: 16, weight: .medium, color: .black)
                
                starAndPriceView(foodRecommendationsModel: foodRecommendationsModel)
            }
        }.padding(.horizontal)
    }
}

struct starAndPriceView: View {
    var foodRecommendationsModel: FoodRecommendationsModel
    var body: some View {
        HStack(spacing: 5) {
            Image("star")
                .resizable()
                .frame(width: 14, height: 14)
            
            Text(foodRecommendationsModel.price)
                .headerSectionStyle(size: 16, weight: .medium, color: .black)
            Text("(\(foodRecommendationsModel.countUsers)+)")
                .headerSectionStyle(size: 14, weight: .regular, color: .gray)
        }
    }
}

