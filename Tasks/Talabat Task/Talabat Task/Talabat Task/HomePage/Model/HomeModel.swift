//
//  HomeModel.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 27/06/2025.
//

import Foundation

struct CategoriesUIModel: Hashable {
    let id = UUID()
    let categoryName: String
    let categoryImage: String
    let categoryExtraInfo: String?
}

struct RestaurantUIModel: Hashable {
    let id = UUID()
    let restauantImage: String
    let restaurantLogo: String
    let restaurantName: String
    let restaurantRating: String
    let restaurantReviewCount: String
    let offerLabel: String?
    var isRestaurantPro: Bool
    var isFavorited: Bool = false
}

struct VoucherUIModel: Hashable {
    let id = UUID()
    let voucherImage: String
    let voucherDescription: String
}
