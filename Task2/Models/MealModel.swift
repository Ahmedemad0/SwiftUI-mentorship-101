//
//  MealModel.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import Foundation

struct MealModel: Identifiable {
    let id = UUID().uuidString
    let backgroundImage: String
    let sideImage: String
    let title: String
    let reviewCount: Float
}
