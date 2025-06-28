//
//  SearchTextField.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI
struct SearchTextField: View {
    @Binding var text: String
    let placeholder: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("", text: $text, prompt: placeholderText)
        }
        .padding(.horizontal, 12)
        .frame(height: 44)
        .background(.white)
        .clipShape(.capsule)
    }

    private var placeholderText: Text {
        Text(placeholder)
    }
}
