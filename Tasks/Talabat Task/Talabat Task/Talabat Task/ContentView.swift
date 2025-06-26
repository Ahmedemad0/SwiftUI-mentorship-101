//
//  ContentView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
            }
    }
    
}


#Preview {
    ContentView()
}

