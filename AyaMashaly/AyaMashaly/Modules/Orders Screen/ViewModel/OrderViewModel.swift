//
//  OrderViewModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import Foundation

class OrderViewModel: ObservableObject {
    @Published var orders: [OrderModel] = []
    
    func fetchOders() {
        orders = [
            OrderModel(deliveryInfo: DeliveryInfoModel(deliveryStatus: "Delivered", deliveryTime: "May 27 . 3:00 am"), summary: OrderSummaryModel(logoOfRestaurant: .logo5, orderInfo: OrderInfoModel(restaurantInfo: RestaurantModel(isPro: false, restaurantName: "Batates And Zalabya"), orderId: "2948765432"), item: ItemModel(itemCount: 2)), details: OrderDetailsModel(price: "75.50"), ratingInfo: RatingInfoModel(isRated: false, rating: 3)),
            
            OrderModel(deliveryInfo: DeliveryInfoModel(deliveryStatus: "Delivered", deliveryTime: "May 28 . 9:00 am"), summary: OrderSummaryModel(logoOfRestaurant: .logo, orderInfo: OrderInfoModel(restaurantInfo: RestaurantModel(isPro: true, restaurantName: "Costa Coffee"), orderId: "2948765432"), item: ItemModel(itemCount: 3)), details: OrderDetailsModel(price: "150.00"), ratingInfo: RatingInfoModel(isRated: true, rating: 5)),
            
            OrderModel(deliveryInfo: DeliveryInfoModel(deliveryStatus: "Delivered", deliveryTime: "May 29 . 12:00 am"), summary: OrderSummaryModel(logoOfRestaurant: .logo3, orderInfo: OrderInfoModel(restaurantInfo: RestaurantModel(isPro: false, restaurantName: "Batates And Zalabya"), orderId: "2948765432"), item: ItemModel(itemCount: 2)), details: OrderDetailsModel(price: "75.50"), ratingInfo: RatingInfoModel(isRated: false, rating: 2)),
            
            OrderModel(deliveryInfo: DeliveryInfoModel(deliveryStatus: "Delivered", deliveryTime: "May 1 . 4:40 am"), summary: OrderSummaryModel(logoOfRestaurant: .logo4, orderInfo: OrderInfoModel(restaurantInfo: RestaurantModel(isPro: true, restaurantName: "Costa Coffee"), orderId: "2948765432"), item: ItemModel(itemCount: 1)), details: OrderDetailsModel(price: "120.30"), ratingInfo: RatingInfoModel(isRated: false, rating: 0)),
            
            OrderModel(deliveryInfo: DeliveryInfoModel(deliveryStatus: "Delivered", deliveryTime: "May 5 . 3:40 am"), summary: OrderSummaryModel(logoOfRestaurant: .logo2, orderInfo: OrderInfoModel(restaurantInfo: RestaurantModel(isPro: false, restaurantName: "Batates And Zalabya"), orderId: "2948765432"), item: ItemModel(itemCount: 2)), details: OrderDetailsModel(price: "150.00"), ratingInfo: RatingInfoModel(isRated: true, rating: 5))
        ]
    }
}
