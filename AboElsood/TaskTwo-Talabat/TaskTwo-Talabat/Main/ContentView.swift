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
            
            OrdersView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Text("Orders")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }.accentColor(PrimaryColor)
    }
}
