//
//  TeldaHomeScreen.swift
//  SwiftUIMentorshipALLTasks
//
//  Created by Ahmed Yamany on 17/07/2025.
//

import SwiftUI

// MARK: - i focus on requiremensts not details ^_^
// here i focused on scroll offset tracking and animating views
struct TeldaHomeScreen: View {
    @State private var scrollOffset: CGRect = .zero

    var body: some View {
        ZStack(alignment: .top) {
            Image(.teldaBackground)
                .resizable()
                .frame(height: 500)
                .ignoresSafeArea()
                .offset(y: scrollOffset.minY < 0 ? scrollOffset.minY : 0) // pin the background image when scroll down, & update its offset based on scroll offsed

            scrollView
        }
        .background(.black)
        .foregroundStyle(.white)
        .overlay(alignment: .top) {
            GeometryReader { reader in
                Rectangle()
                    .fill(.black)
                    .frame(height: reader.safeAreaInsets.top)
                    .opacity(-scrollOffset.midY * 0.3) // update a saveArea rectangle opacity based on scroll offset
                    .ignoresSafeArea()
            }
        }
    }

    private var scrollView: some View {
        ScrollView {
            LazyVStack {
                HStack {
                    Spacer()

                    Text("AY")
                        .padding(8)
                        .clipShape(.circle)
                        .background(.white, in: .circle.stroke(lineWidth: 1))
                }
                .padding(.horizontal, 24)
                .offset(y: scrollOffset.minY > 0 ? -scrollOffset.minY : 0)
                .onOffsetChanged(id: "TeldaHomeScreen") {
                    scrollOffset = $0
                }

                VStack(spacing: 24) {
                    ballanceView
                    actionButtons
                    shopSection
                }
                .padding(.horizontal, 12)
            }
        }
        .coordinateSpace(name: "TeldaHomeScreen")
    }

    private var ballanceView: some View {
        VStack(spacing: 2) {
            HStack {
                Button {
                    // show and hide balance
                } label: {
                    Image(systemName: "eye")
                        .font(.body)
                }

                Text("EGP 1000")
                    .font(.title.bold())
            }

            Button {
            } label: {
                Text("10")
                    .padding(6)
                    .frame(minWidth: 60)
                    .background(.white.opacity(0.2), in: .capsule)
            }
        }
        .frame(height: 200)
    }

    private var actionButtons: some View {
        HStack {
            Button {
            } label: {
                Label("Add Money", systemImage: "plus")
                    .font(.headline.bold())
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(.white.opacity(0.2), in: .capsule)
            }

            Button {
            } label: {
                Image(systemName: "wallet.bifold")
                    .frame(width: 40, height: 40)
                    .background(.white.opacity(0.2), in: .circle)
            }

            Button {
            } label: {
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .frame(width: 40, height: 40)
                    .background(.white.opacity(0.2), in: .circle)
            }
        }
    }

    private var shopSection: some View {
        VStack(alignment: .leading) {
            Text("Shop with discounts")

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(0 ..< 5) { _ in
                        ZStack(alignment: .bottom) {
                            Color.orange

                            VStack(alignment: .leading) {
                                Spacer()
                                Text("noon Marketplaces")
                                    .font(.footnote.weight(.medium))
                            }
                            .overlay(alignment: .topLeading) {
                                Image("test")
                                    .frame(width: 25, height: 25)
                                    .background(.white)
                                    .clipShape(.circle)
                                    .offset(y: -25/2)
                            }
                            .padding([.bottom], 8)
                            .padding(.horizontal, 4)
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(.black.opacity(0.3))
                        }
                        .frame(width: 120, height: 180)
                        .clipShape(.rect(cornerRadius: 16))
                    }
                }
            }
        }
    }
}

#Preview {
    TeldaHomeScreen()
}
