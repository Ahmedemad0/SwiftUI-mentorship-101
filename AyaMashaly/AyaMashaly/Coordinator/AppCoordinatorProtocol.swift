//
//  AppCoordinatorProtocol.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 01/07/2025.
//

import Foundation
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
    case categoryDetails(CategoryModel)
    
    var id: Self { self }
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        case .orders:
            return "Orders"
        case .profile:
            return "Profile"
        default: return ""
        }
    }
    
    var tabImageSelected: String {
        switch self {
        case .home: return "home_selected"
        case .orders: return "orders_selected"
        case .profile: return "profile_selected"
        default: return ""
        }
    }
    
    var tabImageUnselected: String {
        switch self {
        case .home: return "home_unselected"
        case .orders: return "orders_selected"
        case .profile: return "profile_unselected"
        default: return ""
        }
    }
}

enum Sheet {}

enum FullScreenCover {}
