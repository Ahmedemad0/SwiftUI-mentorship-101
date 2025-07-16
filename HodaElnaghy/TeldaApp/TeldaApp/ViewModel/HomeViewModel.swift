//
//  File.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import Combine

class HomeViewModel: ObservableObject {
    @Published var options: [OptionsModel] = []
    @Published var transactions: [TransactionModel] = []
    @Published var providers: [ProviderModel] = []
    
    func getOptionsModel() {
        options = [
            OptionsModel(name: "Add money", icon: "plus"),
            OptionsModel(name: "Send", icon: "arrow.up"),
            OptionsModel(name: "Insights", icon: "chart.bar"),
            OptionsModel(name: "Wallet", icon: "wallet.pass")
        ]
    }
    
    func getTransactionModel() {
        transactions = [
            TransactionModel(
                imageName: "Vodafone",
                tarnsactionName: "Vodafone",
                transactionAmount: "EGP 240",
                transactionDate: "May 14, 2025 9:27 PM"
            ),
            TransactionModel(
                imageName: "powerpuff",
                tarnsactionName: "Hoda",
                transactionAmount: "EGP 1540",
                transactionDate: "May 20, 2025 10:27 AM"
            ),
            TransactionModel(
                imageName: "Sahl",
                tarnsactionName: "Sahl",
                transactionAmount: "EGP 540",
                transactionDate: "May 16, 2025 10:27 PM"
            )
            ]
    }
    
    func getProvidersList() {
        providers = [
            ProviderModel(
            providerName: "Zara",
            providerImage: "zaraLogo",
            backgroundImage: "zara",
            type: "Shopping"),
            
            ProviderModel(
            providerName: "Amazon",
            providerImage: "amazonLogo",
            backgroundImage: "amazon",
            type: "Marketplaces"),
            
            ProviderModel(
            providerName: "Bershka",
            providerImage: "bershkaLogo",
            backgroundImage: "bershka",
            type: "Shopping")
            ]
    }
}
