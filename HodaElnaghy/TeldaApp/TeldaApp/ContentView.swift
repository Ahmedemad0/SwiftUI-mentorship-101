//
//  ContentView.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var coordinator = AppCoordinator()
    @State var selectedTab: Screen = .home
    let tabItems = [
        TabItemModel(screen: .home, title: "Home", iconName: "house.fill"),
        TabItemModel(screen: .home, title: "Options", iconName: "list.bullet"),
        TabItemModel(screen: .home, title: "Profile", iconName: "person.fill")
    ]
    
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.black

        tabBarAppearance.shadowColor = UIColor.white
        tabBarAppearance.shadowImage = UIImage()

        UITabBar.appearance().standardAppearance = tabBarAppearance

        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }

    
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
                }
                .tag(item.screen)
            }
        }
        .tint(Color.white)
    }
}




#Preview {
    ContentView()
}
