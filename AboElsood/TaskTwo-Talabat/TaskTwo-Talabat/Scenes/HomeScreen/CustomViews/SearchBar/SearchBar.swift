//
//  SearchBar.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct SearchBar : View {
    
    @Binding var text : String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search for a restaurant", text: $text)
            }
            .padding()
            .background(Color(.white))
        }
        .frame(height: 40)
        .cornerRadius(20)
        .padding()
    }
}
