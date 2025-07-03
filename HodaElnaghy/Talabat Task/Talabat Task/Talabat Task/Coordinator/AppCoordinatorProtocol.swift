//
//  AppCoordinatorProtocol.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    var path: NavigationPath { get set }
    func pop()
    func popToRoot()
}


enum Screen: Hashable {
    
    case home
    case order
    case profile
    case food(id: String)
    
    var id: Self { self }
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        case .order:
            return "Orders"
        case .profile:
            return "Profile"
        default: return ""
        }
    }
}
