//
//  HomeCoordinator.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import Foundation

@MainActor
protocol HomeCoordinator {
    func presentSelectLocationScreen()
    func navigateToCategoryDetails(_ category: CategoryEntity)
    func navigateToTrendDetails(_ trend: TrendViewModel)
}
