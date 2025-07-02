//
//  TrendEntity.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct TrendViewModel: Identifiable {
    let id: String
    let name: String
    let rate: Double
    let totalRate: Int
    let image: ImageResource
    let isPro: Bool
    
    var isFavourited: Bool = false
}

extension TrendViewModel {
    static let samples: [Self] = [
        .init(id: UUID().uuidString, name: "GRIIX", rate: 5.0, totalRate: 1000, image: .trend1, isPro: true),
        .init(id: UUID().uuidString, name: "OVio", rate: 5.0, totalRate: 1000, image: .trend2, isPro: false),
        .init(id: UUID().uuidString, name: "ABoo", rate: 5.0, totalRate: 1000, image: .trend3, isPro: true),
    ]
}
