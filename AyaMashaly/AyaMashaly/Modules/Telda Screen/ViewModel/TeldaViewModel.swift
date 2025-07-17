//
//  TeldaViewModel.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 17/07/2025.
//

import Foundation

class TeldaViewModel: ObservableObject {
    @Published var buttonsInfo: [ButtonsInfo] = []
    @Published var transactions: [TransactionModel] = []
    @Published var discounts: [DiscountModel] = []
    
    func fetchButtonsInfo() {
        buttonsInfo = [
            .init(title: "Add money", icon: "plus"),
            .init(title: "Withdraw", icon: "arrow.up"),
            .init(title: "Insights", icon: "chart.bar.fill"),
            .init(title: "Cards", icon: "creditcard.fill")
        ]
    }
    
    func fetchTransactions() {
        transactions = [
            .init(iconName: "we", title: "Telecom Egypt", time: "Tuesday 4:45 PM", amount: "EGP 5000"),
            .init(iconName: "person", title: "Ali Ismail", time: "Tuesday 4:43 PM", amount: "EGP 500"),
            .init(iconName: "bolt", title: "Sahl", time: "May 14, 2025 9:27 PM", amount: "EGP 200"),
            .init(iconName: "person", title: "Ali Ismail", time: "Tuesday 4:43 PM", amount: "EGP 500"),
            .init(iconName: "bolt", title: "Sahl", time: "May 14, 2025 9:27 PM", amount: "EGP 200")
        ]
    }
    
    func fetchDiscounts() {
        discounts = [
            .init(title: "noon", subtitle: "Marketplaces", iconName: "noonLogo", backgroundImage: "noonBackground"),
            .init(title: "Defacto", subtitle: "Fashion", iconName: "DefactoLogo", backgroundImage: "defactoBackground"),
            .init(title: "ZARA", subtitle: "Fashion", iconName: "zaraLogo", backgroundImage: "zaraBackground"),
            .init(title: "noon", subtitle: "Marketplaces", iconName: "noonLogo", backgroundImage: "noonBackground"),
            .init(title: "Defacto", subtitle: "Fashion", iconName: "DefactoLogo", backgroundImage: "defactoBackground"),
            .init(title: "ZARA", subtitle: "Fashion", iconName: "zaraLogo", backgroundImage: "zaraBackground"),
        ]
    }
}
