//
//  CategoryEntity.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct CategoryEntity: Identifiable {
    let id: String
    let image: ImageResource
    let name: String
    let offer: String?
}

extension CategoryEntity {
    static let samples: [Self] = [
        CategoryEntity(id: UUID().uuidString, image: .category1, name: "Food", offer: nil),
        CategoryEntity(id: UUID().uuidString, image: .category2, name: "Talabat Mart", offer: "Fast"),
        CategoryEntity(id: UUID().uuidString, image: .category3, name: "Grocary", offer: nil),
        CategoryEntity(id: UUID().uuidString, image: .category4, name: "Health & Beauty", offer: nil),
        CategoryEntity(id: UUID().uuidString, image: .category5, name: "Gift & Donate", offer: nil),
    ]
}
