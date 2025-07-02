//
//  TabBarView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 02/07/2025.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabs: [Screen] = [.home, .orders, .profile]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(tabs, id: \.self) { tab in
                NavigationStack(path: $coordinator.path) {
                    coordinator.build(tab)
                        .navigationDestination(for: Screen.self) { screen in
                            coordinator.build(screen)
                        }
                }
                
                .environmentObject(coordinator)
                .tabItem {
                    VStack {
                        Image(selectedTab == tab ? tab.tabImageSelected : tab.tabImageUnselected)
                        Text(tab.tabTitle)
                    }
                }
            }
        }
    }
}


#Preview {
    TabBarView()
}
