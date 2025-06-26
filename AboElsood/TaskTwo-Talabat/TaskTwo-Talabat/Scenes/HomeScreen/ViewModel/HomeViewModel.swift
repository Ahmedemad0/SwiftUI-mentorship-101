//
//  HomeViewModel.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//


import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    // MARK: - Published UI State
    @Published var searchText: String = ""
    @Published var categories: [CategoriesDomainModel] = []
    @Published var bestSpots: [BestSpotsDomainModel] = []
    @Published var points: String = "0"
    @Published var vouchers: String = "0"
    
    // MARK: - Init
    init() {
        loadMockData()
    }
    
    // MARK: - Data Loading
    private func loadMockData() {
        categories = mockTalabatCategories
        bestSpots = mockBestSpots
        points = "1233"
        vouchers = "2"
    }
    
    // MARK: - User Actions
    func onFavoriteTapped(for id: Int) {
        print("Favorite tapped: \(id)")
    }
}
