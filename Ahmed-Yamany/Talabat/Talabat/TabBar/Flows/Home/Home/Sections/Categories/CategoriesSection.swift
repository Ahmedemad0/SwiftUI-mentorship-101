//
//  CategoriesSection.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct CategoriesSection: View {
    let categories: [CategoryEntity]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top) {
                ForEach(categories) { category in
                    CategoryCell(category: category)
                }
            }
        }
        .scrollIndicators(.hidden)
        .contentMargins(.horizontal, 18)
    }
}

#Preview {
    TabBarFlow()
}
