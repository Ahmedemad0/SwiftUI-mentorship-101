//
//  HomeViewModel.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

@MainActor
@Observable
final class HomeViewModel: ObservableObject {
    var searchText: String = ""
    var userLocation: String = "Cairo, Egypt"
    var categories: [CategoryEntity] = CategoryEntity.samples
    var trends: [TrendViewModel] = TrendViewModel.samples
    
    let coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapDeleverTo() {
        coordinator.presentSelectLocationScreen()
    }
    
    func didTapTrend(_ trend: TrendViewModel) {
        coordinator.navigateToTrendDetails(trend)
    }
    
    func didTapCategory(_ category: CategoryEntity) {
        coordinator.navigateToCategoryDetails(category)
    }
}


#Preview {
    TabBarFlow()
}
