//
//  AppCoordinator.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

class AppCoordinator: AppCoordinatorProtocol {
    @Published var path: NavigationPath = NavigationPath()

    func push(_ screen: Screen) {
        path.append(screen)
    }
 
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }


    @ViewBuilder
    func build(_ screen: Screen) -> some View {
        switch screen {
        case .home:
            HomeView()
        case .order:
            OrdersScreen()
        case .profile:
            OrdersScreen()
        case .food(let id):
            FoodView()
        }
    }
}


struct TabItemModel: Identifiable {
    let id = UUID()
    let screen: Screen
    let title: String
    let iconName: String
}
