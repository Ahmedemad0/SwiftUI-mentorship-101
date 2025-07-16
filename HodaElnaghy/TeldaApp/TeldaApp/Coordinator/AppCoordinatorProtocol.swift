//
//  AppCoordinatorProtocol.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    var path: NavigationPath { get set }
    func pop()
    func popToRoot()
}


enum Screen: Hashable {
    
    case home
    
    var id: Self { self }
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        default: return ""
        }
    }
}

