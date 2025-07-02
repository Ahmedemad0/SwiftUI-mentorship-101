//
//  HomeSearchView.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

struct HomeSearchView: View {
    @ObservedObject var viewModel: HomeViewModel
    let topPadding: CGFloat

    var body: some View {
        VStack(alignment: .leading) {
            Button {
                viewModel.didTapDeleverTo()
            } label: {
                HStack {
                    Text("Delever To \(viewModel.userLocation)")
                    Image(systemName: "chevron.down")
                }
                .foregroundStyle(.white)
            }

            SearchTextField(text: $viewModel.searchText, placeholder: "Search For Pizza")
        }
        .padding(.horizontal, 18)
        .padding(.top, topPadding)
        .frame(maxWidth: .infinity)
        .frame(height: 160)
        .background(.talabat)
    }
}
