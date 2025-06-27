//
//  HomeView.swift
//  NavigationDemo
//
//  Created by Ahmed Emad on 27/06/2025.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack(spacing: 60) {
            Button {
                coordinator.push(.profile)
            } label: {
                Text("Go to profile View: Push")
            }
            
            
            Button {
                coordinator.presentSheet(.listOfLanguages)
            } label: {
                Text("Go to languages: Present Sheet")
            }
            
            
            Button {
                coordinator.presentFullScreenCover(.listOfColor)
            } label: {
                Text("Go to Colors : Full over screen")
            }
            
        }
        
    }
}

#Preview {
    TabBarView()
}


struct ColorsView: View {
    
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack(spacing: 60) {
            Button {
                coordinator.dismissFullScreenOver()
            } label: {
                Text("dismiss")
            }
        }
    }
}

struct ProfileView: View {
    
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack(spacing: 60) {
            Button {
                
                coordinator.push(.mealDetails(id: ""))
                
            } label: {
                Text("Go to meal details : Push")
            }
            
        }
    }
}


struct MealDetailsView: View {
    
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        VStack(spacing: 60) {
            Button {
                coordinator.pop()
            } label: {
                Text("Pop")
            }
            
        
            Button {
                coordinator.popToRoot()
            } label: {
                Text("Pop to root")
            }
            
        }
    }
}
