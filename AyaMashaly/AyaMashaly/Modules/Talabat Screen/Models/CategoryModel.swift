//
//  CategoryModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import Foundation
import DeveloperToolsSupport

struct CategoryModel: Identifiable, Equatable, Hashable {
    let id = UUID().uuidString
    let image: ImageResource
    let title: String
    let badgeText: String?
}
