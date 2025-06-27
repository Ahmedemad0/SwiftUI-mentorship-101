//
//  TabBarView.swift
//  NavigationDemo
//
//  Created by Ahmed Emad on 27/06/2025.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabs: [Screen] = [.home, .menu]
    
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
                }
            }
        }
        
    }
}

#Preview {
    TabBarView()
}
