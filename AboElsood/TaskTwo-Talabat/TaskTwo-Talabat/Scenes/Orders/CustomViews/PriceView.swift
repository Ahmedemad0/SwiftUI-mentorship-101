//
//  PriceView.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import SwiftUI

struct PriceView: View {
    var price: String
    
    var body: some View {
        let (amount, currency) = splitAmountAndCurrency(from: price)
        
        return Text(amount)
            .fontWeight(.bold)
        + Text(" \(currency)")
    }
    
    private func splitAmountAndCurrency(from price: String) -> (String, String) {
        // Find first digit-to-non-digit boundary
        let digits = CharacterSet(charactersIn: "0123456789.")
        let scalars = price.unicodeScalars
        
        if let index = scalars.firstIndex(where: { !digits.contains($0) }) {
            let splitIndex = price.index(price.startIndex, offsetBy: scalars.distance(from: scalars.startIndex, to: index))
            let amount = String(price[..<splitIndex]).trimmingCharacters(in: .whitespaces)
            let currency = String(price[splitIndex...]).trimmingCharacters(in: .whitespaces)
            return (amount, currency)
        }
        
        return (price, "") // fallback if no currency found
    }
}
