//
//  OrdersViewModel.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import SwiftUI
import Combine

class OrdersViewModel: ObservableObject {
    // MARK: - Published UI State
    @Published var orders: [OrderDomainModel] = []
    
    // MARK: - Init
    init() {
        loadMockData()
    }
    
    // MARK: - Data Loading
    private func loadMockData() {
        orders = mockOrders
    }
}
