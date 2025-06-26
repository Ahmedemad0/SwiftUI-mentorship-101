//
//  CategoriesDomainModel.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import Foundation

struct CategoriesDomainModel : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var badge: String?
}

let mockTalabatCategories: [CategoriesDomainModel] = [
    CategoriesDomainModel(
        name: "Food",
        image: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: nil
    ),
    CategoriesDomainModel(
        name: "Talabat Mart",
        image: "https://images.pexels.com/photos/4393668/pexels-photo-4393668.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: "Fast"
    ),
    CategoriesDomainModel(
        name: "Groceries",
        image: "https://images.pexels.com/photos/4022103/pexels-photo-4022103.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: nil
    ),
    CategoriesDomainModel(
        name: "Health & Beauty",
        image: "https://images.pexels.com/photos/3373746/pexels-photo-3373746.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: nil
    ),
    CategoriesDomainModel(
        name: "Gifts",
        image: "https://images.pexels.com/photos/5632401/pexels-photo-5632401.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: nil
    ),
    CategoriesDomainModel(
        name: "Pickup",
        image: "https://images.pexels.com/photos/4393021/pexels-photo-4393021.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: "15% 0ff"
    ),
    CategoriesDomainModel(
        name: "Stores",
        image: "https://images.pexels.com/photos/3962285/pexels-photo-3962285.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=800",
        badge: nil
    )
]
