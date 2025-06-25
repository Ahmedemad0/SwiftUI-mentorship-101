//
//  HeaderView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Deliver to Apartment")
                    .headerSectionStyle(size: 15, weight: .bold, color: .white)
                
                Button(action: {
                    print("arrow down tapped")
                }) {
                    Image("down")
                }
            }
            
            CustomSearchBar()
            
        }
        .padding(16)
        .background(Color.appPrimary)
    }
}

#Preview {
    HeaderView()
}


