//
//  TalabatViewModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import Foundation

class TalabatViewModel: ObservableObject {
    @Published var categories: [CategoryModel] = []
    @Published var foodRecommended: [FoodRecommendationsModel] = []
    @Published var redeemItems: [RedeemItemModel] = []
    
    func fetchCategories() {
        categories = [
            .init(image: "6", title: "Food"),
            .init(image: "7", title: "talabat mart"),
            .init(image: "8", title: "Groceries"),
            .init(image: "9", title: "Health & Beauty"),
            .init(image: "10", title: "Gift $ Donate"),
            .init(image: "6", title: "Flowers"),
            .init(image: "7", title: "Coffee"),
            .init(image: "8", title: "More shops"),
            .init(image: "9", title: "Coffee"),
        ]
    }
    
    func fetchFoodRecommended() {
        foodRecommended = [
            .init(image: "1", title: "Asian Corner", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
            .init(image: "2", title: "GRIIX", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
            .init(image: "1", title: "Asian Corner", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
            .init(image: "2", title: "GRIIX", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
            .init(image: "1", title: "Shawarma", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
            .init(image: "2", title: "Shawarma", rating: 1, price: "15.0", countUsers: 120, logo: "logo"),
        ]
    }
    
    func fetchRedeemItems() {
        redeemItems = [
            .init(imageName: "tt", pointsText: "2,950 points"),
            .init(imageName: "tt", pointsText: "2 vouchers")
        ]
    }
}

