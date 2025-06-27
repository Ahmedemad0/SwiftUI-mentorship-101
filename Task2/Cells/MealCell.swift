//
//  MealCell.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import SwiftUI

struct MealCell: View {
    
    let meal: MealModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            ZStack(alignment: .top) {
                
                Image(meal.backgroundImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 240, height: 200)
                    .cornerRadius(20)
                    .clipped()
                
                HStack {
                    Image(meal.sideImage)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 40, height: 40)
                            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
                        
#warning("Why u don't handle like")
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.red)
                            .frame(width: 20, height: 20)
                    }
                }
                .padding(10)
            }
            .frame(width: 240, height: 200)
            
            VStack(alignment: .leading ,spacing: 8) {
                Text(meal.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.subheadline)
                    
                    Text(String(format: "%.1f", meal.reviewCount))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("(1,000+)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    MealCell(meal: MealModel(backgroundImage: "1", sideImage: "6", title: "Asian Corner", reviewCount: 4.7))
}
