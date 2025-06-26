//
//  ContentView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }.accentColor(PrimaryColor)
    }
}
