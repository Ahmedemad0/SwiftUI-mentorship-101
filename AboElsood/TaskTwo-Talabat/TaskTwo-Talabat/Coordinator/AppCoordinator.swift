//
//  AppCoordinator.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
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
            HomeView()
        case .orders:
            OrdersView()
        case .profile:
            ProfileView()
        case .category(let category):
            CategoryView(category: category)
        }
    }
    @ViewBuilder
    func build(_ sheet: Sheet) -> some View {
        switch sheet {
        case .empty:
            Text("empty")
        }
    }
    
    @ViewBuilder
    func build(_ fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .empty:
            Text("empty")
        }
    }
}
