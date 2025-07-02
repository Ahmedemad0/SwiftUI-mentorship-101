//
//  AppCoordinator.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import SwiftUI

class AppCoordinator: AppCoordinatorProtocol {
    @Published var path: NavigationPath = NavigationPath()
    
    @Published var sheet: Sheet?
    
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    func presentSheet(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissFullScreenOver() {
        fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(_ screen: Screen) -> some View {
        switch screen {
        case .home:
            TalabatScreen()
        case .orders:
            OrdersScreen()
        case .profile:
            ProfileScreen()
        case .categoryDetails(let category):
            CategoryDetailsView(category: category)
        }
    }
    
    @ViewBuilder
    func build(_ sheet: Sheet) -> some View {}
    
    @ViewBuilder
    func build(_ fullScreenCover: FullScreenCover) -> some View {}
}
