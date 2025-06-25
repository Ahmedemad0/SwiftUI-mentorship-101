//
//  FoodRecommendationsModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import Foundation

struct FoodRecommendationsModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
    let rating: Double
    let price: String
    let countUsers: Int
    let logo: String
}
