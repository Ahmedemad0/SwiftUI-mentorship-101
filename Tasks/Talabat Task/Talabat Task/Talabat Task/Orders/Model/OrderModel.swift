//
//  OrderModel.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import Foundation

struct OrderModel {
    let returantName: String
    let id: String
    let imageName: String
    let price: String
    let orderDetails: [OrderDetails]
    let arrivalTime: String
    let isPro: Bool
}

struct OrderDetails {
    let id: String
    let imageName: String
    let name: String
    let price: String
}
