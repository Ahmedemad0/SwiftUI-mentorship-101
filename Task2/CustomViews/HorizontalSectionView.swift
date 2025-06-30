//
//  HorizontalSectionView.swift
//  Task2
//
//  Created by OSX on 30/06/2025.
//

import SwiftUI

struct HorizontalSectionView<Item: Identifiable, Content: View>: View {
    
    var title: String?
    var items: [Item]
    var content: (Item) -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            if let title = title {
                Text(title)
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(.horizontal, 8)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(items) { item in
                        content(item)
                    }
                }
                .padding(.horizontal, 8)
            }
        }
    }
}

