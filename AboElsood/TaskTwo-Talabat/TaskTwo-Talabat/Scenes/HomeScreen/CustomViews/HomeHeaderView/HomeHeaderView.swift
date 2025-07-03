//
//  HomeHeaderView.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//


import SwiftUI

struct HomeHeaderView: View {
    var topPadding: CGFloat
    @Binding var searchText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Deliver to Apartment")
                Image(systemName: "chevron.down")
            }
            .padding(.horizontal)
            .padding(.top, topPadding)
            
            SearchBar(text: $searchText)
        }.background(PrimaryColor)
    }
}
