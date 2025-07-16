//
//  HomeScreen.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel = HomeViewModel()
    private let backgroundHeight = UIScreen.main.bounds.height / 2 + 100

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(spacing: 0) {
                    headerView(geo: geo)
                    bodyView
                }
            }
            .background(Color.screenBackground)
            .ignoresSafeArea()
        }
        .task {
            viewModel.getOptionsModel()
            viewModel.getTransactionModel()
            viewModel.getProvidersList()
        }
    }

    // MARK: - Header
    @ViewBuilder
    private func headerView(geo: GeometryProxy) -> some View {
        ZStack(alignment: .top) {
            GeometryReader { innerGeo in
                let offset = innerGeo.frame(in: .global).minY
                let stretchAmount = max(offset, 0)

                Image(.bluePlanet)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geo.size.width + stretchAmount,
                        height: backgroundHeight + stretchAmount
                    )
                    .clipped()
                    .offset(x: -stretchAmount / 2, y: -stretchAmount)

                Color.black.opacity(0.3)
                    .frame(
                        width: geo.size.width + stretchAmount,
                        height: backgroundHeight + stretchAmount
                    )
                    .offset(x: -stretchAmount / 2, y: -stretchAmount)
            }

            VStack(spacing: 16) {
                HStack {
                    Spacer()
                    Image(.powerpuff)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 0.3))
                }

                Spacer()

                BalanceView(balance: "EGP120")
                CardDetails(text: "Hoda Elnaghy")

                Spacer()

                HStack {
                    Spacer()
                    ForEach(viewModel.options) { option in
                        OptionsView(model: option)
                        Spacer()
                    }
                }
            }
            .padding()
            .padding(.vertical, 48)
        }
        .frame(height: backgroundHeight)
    }

    // MARK: - Body
    @ViewBuilder
    private var bodyView: some View {
        VStack(spacing: 16) {
            transactionsSection
            providersSection
        }
    }

    // MARK: - Transactions Section
    @ViewBuilder
    private var transactionsSection: some View {
        VStack(spacing: 0) {
            ForEach(viewModel.transactions) { transaction in
                TransactionView(model: transaction)
            }

            Button("See all") {}
                .foregroundStyle(.blue)
                .padding(.bottom, 16)
        }
        .background(Color.cardBackground)
        .cornerRadius(16)
        .padding(.horizontal, 16)
        .padding(.top, -40)
    }

    // MARK: - Providers Section
    @ViewBuilder
    private var providersSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Shop with discount")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
                Spacer()
            }

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 12) {
                    ForEach(viewModel.providers) { provider in
                        ProvidersView(model: provider)
                    }
                }
            }

            Button("See all") {}
                .foregroundStyle(.blue)
        }
        .padding()
        .background(Color.cardBackground)
        .cornerRadius(16)
        .padding(.horizontal, 16)
        .padding(.bottom, 150)
    }
}


#Preview {
    HomeScreen()
}

