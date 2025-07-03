//
//  AppCoordinatorProtocol.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    var path: NavigationPath { get set }
    var sheet: Sheet? { get set }
    var fullScreenCover: FullScreenCover? { get set }
    func push(_ screen:  Screen)
    func presentSheet(_ sheet: Sheet)
    func presentFullScreenCover(_ fullScreenCover: FullScreenCover)
    func pop()
    func popToRoot()
    func dismissSheet()
    func dismissFullScreenOver()
}


enum Screen: Hashable {
    
    case home
    case orders
    case profile
    case category(CategoriesDomainModel)
    
    var id: Self { self }
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        case .orders:
            return "Menu"
        case .profile:
            return "Menu"
        case .category(_):
            return ""
        }
    }
    
    var tabImage: String{
        switch self {
        case .home:
            return "house.fill"
        case .orders:
            return "list.bullet.rectangle.portrait"
        case .profile:
            return "person.fill"
        case .category(_):
            return ""
        }
    }
    
}

enum Sheet: Identifiable {
    case empty
    var id: Self { self }
}


enum FullScreenCover: Identifiable {
    case empty
    var id: Self { self }
}
