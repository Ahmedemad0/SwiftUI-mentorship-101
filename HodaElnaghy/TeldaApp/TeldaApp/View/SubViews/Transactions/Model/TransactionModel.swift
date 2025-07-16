//
//  TransactionModel.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import Foundation

struct TransactionModel: Identifiable {
    let id = UUID()
    let imageName: String
    let tarnsactionName: String
    let transactionAmount: String
    let transactionDate: String
    var billPayment: Bool = true
}
