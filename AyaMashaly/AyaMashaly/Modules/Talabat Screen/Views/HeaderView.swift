//
//  HeaderView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct HeaderView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HeaderTitleSection()
            CustomSearchBar(searchText: $searchText)
            
        }
        .padding(16)
        .background(.appPrimary)
    }
}

private struct HeaderTitleSection: View {
    var body: some View {
        HStack {
            Text("Deliver to Apartment")
                .textStyle(size: 15, weight: .bold, color: .white)
            
            Button(action: {
                print("arrow down tapped")
            }) {
                Image(.down)
            }
        }
    }
}

#Preview {
    HeaderView()
}


