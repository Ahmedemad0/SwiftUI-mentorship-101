//
//  TabBarView.swift
//  Task2
//
//  Created by OSX on 02/07/2025.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabs: [Screen] = [.home, .order]
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ForEach(tabs, id: \.self) { tab in
                NavigationStack(path: $coordinator.path) {
                    coordinator.build(tab)
                        .navigationDestination(for: Screen.self){ screen in
                            coordinator.build(screen)
                        }
                        .sheet(item: $coordinator.sheet) { sheet in
                            coordinator.build(sheet)
                        }
                        .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                            coordinator.build(fullScreenCover)
                        }
                }
                .environmentObject(coordinator)
                .tabItem {
                    Text(tab.tabTitle)
                    Image(systemName: tab.tabImage)
                }
            }
        }
    }
}

#Preview {
    TabBarView()
}
