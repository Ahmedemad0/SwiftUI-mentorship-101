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
            .init(image: ._6, title: "Food", badgeText: nil),
            .init(image: ._7, title: "talabat mart", badgeText: "Fast"),
            .init(image: ._8, title: "Groceries", badgeText: nil),
            .init(image: ._9, title: "Health & Beauty", badgeText: nil),
            .init(image: ._10, title: "Gift $ Donate", badgeText: nil),
            .init(image: ._6, title: "Flowers", badgeText: nil),
            .init(image: ._7, title: "Coffee", badgeText: nil),
            .init(image: ._8, title: "More shops", badgeText: nil),
            .init(image: ._9, title: "Coffee", badgeText: "Slow"),
        ]
    }
    
    func fetchFoodRecommended() {
        foodRecommended = [
            .init(image: ._1, title: "Asian Corner", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
            .init(image: ._2, title: "GRIIX", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
            .init(image: ._1, title: "Asian Corner", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
            .init(image: ._2, title: "GRIIX", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
            .init(image: ._1, title: "Shawarma", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
            .init(image: ._2, title: "Shawarma", rating: 1, price: "15.0", countUsers: 120, logo: .logo),
        ]
    }
    
    func fetchRedeemItems() {
        redeemItems = [
            .init(imageName: "tt", pointsText: "2,950 points"),
            .init(imageName: "tt", pointsText: "2 vouchers")
        ]
    }
}

