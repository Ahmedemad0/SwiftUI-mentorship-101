//
//  OrderModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import Foundation
import DeveloperToolsSupport

struct OrderModel: Identifiable {
    let id = UUID().uuidString
    let deliveryInfo: DeliveryInfoModel
    let summary: OrderSummaryModel
    let details: OrderDetailsModel
    let ratingInfo: RatingInfoModel
}

struct DeliveryInfoModel {
    let deliveryStatus: String
    let deliveryTime: String
}

struct OrderSummaryModel {
    let logoOfRestaurant: ImageResource
    let orderInfo: OrderInfoModel
    let item: ItemModel
}

struct OrderInfoModel {
    let restaurantInfo: RestaurantModel
    let orderId: String
}

struct RestaurantModel {
    let isPro: Bool
    let restaurantName: String
}

struct ItemModel {
    let itemCount: Int
}

struct OrderDetailsModel {
    let price: String
}

struct RatingInfoModel {
    let isRated: Bool
    let rating: Int?
}
