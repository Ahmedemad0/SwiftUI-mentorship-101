//
//  ContentView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabs: [Screen] = [.home, .orders,.profile]
    
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
                    Image(systemName: tab.tabImage)
                    Text(tab.tabTitle)
                }
            }
        }.accentColor(PrimaryColor)
    }
}
