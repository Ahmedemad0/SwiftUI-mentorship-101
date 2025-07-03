//
//  ContentView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabItems = [
        TabItemModel(screen: .home, title: "Home", iconName: "house.fill"),
        TabItemModel(screen: .order, title: "Orders", iconName: "list.bullet"),
        TabItemModel(screen: .profile, title: "Profile", iconName: "person.fill")
    ]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(tabItems) { item in
                NavigationStack(path: $coordinator.path) {
                    coordinator.build(item.screen)
                        .navigationDestination(for: Screen.self) { screen in
                            coordinator.build(screen)
                        }
                }
                .environmentObject(coordinator)
                .tabItem {
                    Image(systemName: item.iconName)
                    Text(item.title)
                }
                .tag(item.screen)
            }
        }
        .tint(Color.talabatOrange)
    }
}


#Preview {
    ContentView()
}

