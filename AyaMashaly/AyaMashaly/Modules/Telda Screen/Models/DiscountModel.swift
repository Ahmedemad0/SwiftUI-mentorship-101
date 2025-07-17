//
//  DiscountModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 17/07/2025.
//

import Foundation

struct DiscountModel: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subtitle: String
    var iconName: String
    var backgroundImage: String
}
