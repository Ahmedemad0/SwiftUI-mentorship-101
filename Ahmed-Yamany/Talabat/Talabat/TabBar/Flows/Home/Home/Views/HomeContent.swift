//
//  HomeContent.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

struct HomeContent: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        LazyVStack {
            CategoriesSection(
                categories: viewModel.categories,
                onCategoryTapped: { category in
                    viewModel.didTapCategory(category)
                }
            )

            TrendsSection(
                trends: $viewModel.trends,
                didTapTrend: { trend in
                    viewModel.didTapTrend(trend)
                }
            )
        }
    }
}
