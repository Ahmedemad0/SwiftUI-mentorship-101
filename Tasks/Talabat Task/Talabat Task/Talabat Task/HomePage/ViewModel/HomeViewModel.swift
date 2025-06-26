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
        fetchRestaurant()
        getVoucherData()
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
        restaurantsArray = [
            RestaurantUIModel(restauantImage: "rest1", restaurantLogo: "rest1l", restaurantName: "Asian Corner", restaurantRating: "4.7", restaurantReviewCount: "1000", offerLabel: "Buy 1 get 1 free", isRestaurantPro: true),
            RestaurantUIModel(restauantImage: "rest3", restaurantLogo: "rest3l", restaurantName: "BBQ", restaurantRating: "5", restaurantReviewCount: "900", offerLabel: nil, isRestaurantPro: false),
            RestaurantUIModel(restauantImage: "rest4", restaurantLogo: "rest4l", restaurantName: "Sush", restaurantRating: "4.7", restaurantReviewCount: "2000", offerLabel: nil, isRestaurantPro: false),
            RestaurantUIModel(restauantImage: "rest5", restaurantLogo: "rest5l", restaurantName: "Pizza", restaurantRating: "4.9", restaurantReviewCount: "1500", offerLabel: "Buy 1 get 1 free", isRestaurantPro: false)
            
            ]
    }
    
    private func getVoucherData() {
        vouchersArray = [
            VoucherUIModel(voucherImage: "voucher1", voucherDescription: "2,935 points"),
            VoucherUIModel(voucherImage: "voucher2", voucherDescription: "2 vouchers")
            ]
    }
}
