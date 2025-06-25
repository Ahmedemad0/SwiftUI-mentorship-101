//
//  CategoryModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import Foundation

struct CategoryModel: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}
