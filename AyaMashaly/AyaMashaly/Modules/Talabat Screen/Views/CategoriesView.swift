//
//  CategoriesView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct CategoriesView: View {
    @ObservedObject var viewModel: TalabatViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(viewModel.categories) { category in
                    CategoryCell(categortModel: category)
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 16)
        .task {
            viewModel.fetchCategories()
        }
    }
}

#Preview {
    CategoriesView(viewModel: TalabatViewModel())
}

