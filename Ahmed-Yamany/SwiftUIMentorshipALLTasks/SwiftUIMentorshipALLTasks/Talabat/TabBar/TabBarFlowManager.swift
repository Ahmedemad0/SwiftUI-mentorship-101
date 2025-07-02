//
//  TabBarFlowManager.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

@MainActor
@Observable
public final class TabBarFlowManager: ObservableObject {
    var selectedItem: TabBarItem = .home
    var items: [TabBarItem] = [.home, .order, .account]
}
