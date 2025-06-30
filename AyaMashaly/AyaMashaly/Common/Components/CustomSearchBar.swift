//
//  CustomSearchBar.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct CustomSearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Button(action: {
                print("search tapped")
            }) {
                Image(systemName: "magnifyingglass")
                
                    .foregroundColor(.black)
            }.padding()
            
            TextField("Search for Pizza", text: $searchText)
                .tint(.black)
                .placeholderStyle(text: "Search for Pizza", show: searchText.isEmpty, color: .black)
        }
        .borderOfCustomSearchBar(cornerRadius: 25, color: .white)
    }
}
