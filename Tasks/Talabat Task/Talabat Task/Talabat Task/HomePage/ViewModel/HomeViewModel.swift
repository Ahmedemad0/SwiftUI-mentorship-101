//
//  HomeViewModel.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    @Published var categoriesArray: [CategoriesUIModel] = []
    @Published var restaurantsArray: [RestaurantUIModel] = []
    @Published var vouchersArray: [VoucherUIModel] = []
    
    func getData() {
        fetchCategories()
    }
    
    private func fetchCategories() {
        categoriesArray = [
            CategoriesUIModel(categoryName: "Food", categoryImage: "category1", categoryExtraInfo: nil),
            CategoriesUIModel(categoryName: "Talabat mart", categoryImage: "category2", categoryExtraInfo: "Fast"),
            CategoriesUIModel(categoryName: "Groceries", categoryImage: "category3", categoryExtraInfo: nil),
            CategoriesUIModel(categoryName: "Health & beauty", categoryImage: "category4", categoryExtraInfo: nil),
            CategoriesUIModel(categoryName: "Gift & Donate", categoryImage: "category5", categoryExtraInfo: nil),
            CategoriesUIModel(categoryName: "Stores", categoryImage: "category6", categoryExtraInfo: nil),
            CategoriesUIModel(categoryName: "Pickup", categoryImage: "category7", categoryExtraInfo: "15% off")
        ]
    }
    
    private func fetchRestaurant() {
        let model = RestaurantView(restauantImage: "rest1", restaurantLogo: "rest1l", restaurantName: "Asian Corner", restaurantRating: "4.7", restaurantReviewCount: "1000", offerLabel: "Buy 1 get 1 free", isRestaurantPro: true)
    }
}
