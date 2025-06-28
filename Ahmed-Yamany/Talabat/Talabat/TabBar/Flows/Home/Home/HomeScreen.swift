//
//  HomeScreen.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel: HomeViewModel
    
    init(coordinator: HomeCoordinator) {
        _viewModel = StateObject(wrappedValue: HomeViewModel(coordinator: coordinator))
    }

    var body: some View {
        GeometryReader { geometryProxy in
            ScrollView {
                VStack {
                    HomeSearchView(viewModel: viewModel, topPadding: geometryProxy.safeAreaInsets.top)
                        .visualEffect { content, proxy in
                            let rect = proxy.frame(in: .scrollView)
                            return content
                                .offset(y: rect.minY < 0 ? 0 : -rect.minY)
                        }
                        .zIndex(1)

                    LazyVStack(spacing: 24) {
                        Text("Loading")
                        
                        HomeContent(viewModel: viewModel)
                    }
                    .zIndex(0)
                    .offset(y: -40)
                }
            }
            .ignoresSafeArea()
        }
    }
}

private struct HomeSearchView: View {
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

private struct HomeContent: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        LazyVStack {
            ForEach(0 ..< 1000) { _ in
                Text("Heelo")
            }
        }
    }
}

#Preview {
    TabBarFlow()
}
