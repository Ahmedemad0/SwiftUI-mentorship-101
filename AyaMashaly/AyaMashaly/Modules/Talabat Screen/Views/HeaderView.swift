//
//  HeaderView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct HeaderView: View {
#warning("Even if the view is small and simple, don't write all the views in the body directly")
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
            
#warning("Where search text")
            CustomSearchBar()
            
        }
        .padding(16)
        .background(Color.appPrimary)
    }
}

#Preview {
    HeaderView()
}


