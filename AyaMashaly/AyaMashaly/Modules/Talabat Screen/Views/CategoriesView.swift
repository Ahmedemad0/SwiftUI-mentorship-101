//
//  CategoriesView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct CategoriesView: View {
    @ObservedObject var viewModel: TalabatViewModel
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(viewModel.categories) { category in
                    CategoryCell(categortModel: category)
                        .onTapGesture {
                            coordinator.push(.categoryDetails(category))
                        }
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

