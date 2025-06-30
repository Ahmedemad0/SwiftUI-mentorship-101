//
//  FoodRecommendationsModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import Foundation
import DeveloperToolsSupport

struct FoodRecommendationsModel: Identifiable {
    let id = UUID().uuidString
    let image: ImageResource
    let title: String
    let rating: Double
    let price: String
    let countUsers: Int
    let logo: ImageResource
}
