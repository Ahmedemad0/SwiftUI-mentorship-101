//
//  BestSpotsDomainModel.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import Foundation

struct BestSpotsDomainModel :Identifiable {
    var id : Int
    var name: String
    var restaurantImage: String
    var bestSellerMeal: String
    var mealImage : String
    var ratings: String
    var ratingsCount: String
    var isPro: Bool
}

let mockBestSpots: [BestSpotsDomainModel] = [
    BestSpotsDomainModel(
        id: 1,
        name: "Burger Palace",
        restaurantImage: "https://images.pexels.com/photos/1395964/pexels-photo-1395964.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        bestSellerMeal: "Double Cheeseburger",
        mealImage: "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        ratings: "4.7",
        ratingsCount: "1.2k",
        isPro: true
    ),
    BestSpotsDomainModel(
        id: 2,
        name: "Pasta World",
        restaurantImage: "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        bestSellerMeal: "Creamy Alfredo Pasta",
        mealImage: "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        ratings: "4.6",
        ratingsCount: "980",
        isPro: true
    ),
    BestSpotsDomainModel(
        id: 3,
        name: "Pizza Roma",
        restaurantImage: "https://images.pexels.com/photos/415945/pexels-photo-415945.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        bestSellerMeal: "Pepperoni Pizza",
        mealImage: "https://images.pexels.com/photos/4109120/pexels-photo-4109120.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        ratings: "4.4",
        ratingsCount: "1k",
        isPro: false
    ),
    BestSpotsDomainModel(
        id: 4,
        name: "Sushi & Co.",
        restaurantImage: "https://images.pexels.com/photos/4911673/pexels-photo-4911673.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        bestSellerMeal: "Salmon Nigiri Box",
        mealImage: "https://images.pexels.com/photos/2098085/pexels-photo-2098085.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        ratings: "4.8",
        ratingsCount: "2.1k",
        isPro: true
    ),
    BestSpotsDomainModel(
        id: 5,
        name: "Shawarma Stop",
        restaurantImage: "https://images.pexels.com/photos/4464813/pexels-photo-4464813.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        bestSellerMeal: "Beef Shawarma Wrap",
        mealImage: "https://images.pexels.com/photos/6287769/pexels-photo-6287769.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        ratings: "4.3",
        ratingsCount: "760",
        isPro: false
    )
]
