//
//  TransactionModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 17/07/2025.
//

import Foundation

struct TransactionModel: Identifiable {
    var id = UUID().uuidString
    var iconName: String
    var title: String
    var time: String
    var amount: String
}
