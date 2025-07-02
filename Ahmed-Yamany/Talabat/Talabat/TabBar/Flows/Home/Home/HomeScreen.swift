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
                                .offset(y: rect.minY < 0 ? 0 : -rect.minY) // pin the search view on scroll to bottom
                        }
                        .zIndex(1)

                    LazyVStack(spacing: 24) {
                        Text("Loading")

                        HomeContent(viewModel: viewModel)
                    }
                    .zIndex(0)
                    .offset(y: -40)
                }
                .overlay(alignment: .top) {
                    Rectangle()
                        .fill(.white)
                        .frame(height: geometryProxy.safeAreaInsets.top)
                        .visualEffect { content, proxy in
                            let rect = proxy.frame(in: .scrollView)
                            return content
                                .offset(y: -rect.minY) // pin a white rectangle on the top
                                .opacity(-rect.midY / (160 / 2)) // update opacity based on scroll offset
                        }
                }
            }

            .ignoresSafeArea()
        }
    }
}

#Preview {
    TabBarFlow()
}
