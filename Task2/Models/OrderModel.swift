//
//  OrderModel.swift
//  Task2
//
//  Created by OSX on 03/07/2025.
//

import Foundation

struct OrderModel: Identifiable {
    let id = UUID().uuidString
    let status: String
    let time: String
    let image: String
    let storeName: String
    let orderId: String
    let itemsCount: Int
    let currency: String
    let price: Int
    let rate: String
}
