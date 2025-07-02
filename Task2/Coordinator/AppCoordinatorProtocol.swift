//
//  AppCoordinatorProtocol.swift
//  NavigationDemo
//
//  Created by Ahmed Emad on 27/06/2025.
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
    case order
    case profile
    
    var id: Self { self }
    
    var tabTitle: String {
        switch self {
        case .home:
            return "Home"
        case .order:
            return "Menu"
        case .profile:
            return "Account"
        }
    }
    
    var tabImage: String {
        switch self {
        case .home:
            return "house"
        case .order:
            return "cart"
        case .profile:
            return "person.circle"
        }
    }
    
}

enum Sheet: Identifiable {
    case listOfLanguages
    
    var id: Self { self }
}


enum FullScreenCover: Identifiable {
    case listOfColor
    
    var id: Self { self }
}
