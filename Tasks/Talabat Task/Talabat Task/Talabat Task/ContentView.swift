//
//  ContentView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().tintColor = UIColor(red: 245/255, green: 89/255, blue: 6/255, alpha: 1)
    }
        var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }

                HomeView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favorites")
                    }

                HomeView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Account")
                    }
            }
            .tint(Color(red: 245/255, green: 89/255, blue: 6/255))
    }
    
}


#Preview {
    ContentView()
}

