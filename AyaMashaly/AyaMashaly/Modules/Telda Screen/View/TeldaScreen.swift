//
//  TeldaScreen.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 07/07/2025.
//

import SwiftUI

struct TeldaScreen: View {
    @State var scale: CGFloat = 1
    @State var offset: CGFloat = 0
    @State private var showHeader = false
    @State private var showButtons = false
    @State private var showTransactions = false
    @State private var showDiscounts = false
    @StateObject var viewModel: TeldaViewModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                GeometryReader { geo in
                    Color.clear
                        .onChange(of: geo.frame(in: .global).minY) { oldValue, newValue in
                            let value = 1 + newValue / 200
                            scale = value < 1 ? 1 : value
                            offset = newValue
                        }
                }
            }
            
            VStack {
                Spacer(minLength: 50)
                TeldaHeaderView(offset: offset)
                    .opacity(showHeader ? 1 : 0)
                    .blur(radius: showHeader ? 0 : 8)
                    .offset(y: showHeader ? 0 : 70)
                    .animation(.easeOut(duration: 1), value: showHeader)
                    .onAppear {
                        showHeader = true
                    }
                
                ActionButtonsView(viewModel: viewModel)
                    .opacity(showButtons ? 1 : 0)
                    .offset(y: showButtons ? 0 : 70)
                    .blur(radius: showButtons ? 0 : 8)
                    .animation(.easeOut(duration: 1).delay(0.3), value: showButtons)
                    .onAppear {
                        showButtons = true
                    }
                
                TransactionsView(viewModel: viewModel)
                    .opacity(showTransactions ? 1 : 0)
                    .offset(y: showTransactions ? 0 : 70)
                    .blur(radius: showTransactions ? 0 : 8)
                    .animation(.easeOut(duration: 1).delay(0.5), value: showTransactions)
                    .onAppear {
                        showTransactions = true
                    }
                
                DiscountSectionView(viewModel: viewModel)
                    .opacity(showDiscounts ? 1 : 0)
                    .offset(y: showDiscounts ? 0 : 70)
                    .blur(radius: showDiscounts ? 0 : 8)
                    .rotation3DEffect(
                        .degrees(showDiscounts ? 0 : -90),
                        axis: (x: 1.0, y: 0.0, z: 0.0)
                    )
                    .animation(.easeOut(duration: 1).delay(0.7), value: showDiscounts)
                    .onAppear {
                        showDiscounts = true
                    }
                
                Spacer(minLength: 50)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .padding(.horizontal)
        .background {
            ZStack {
                Image(.teldaBackground)
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(scale)
                Color.black.opacity(0.3)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TeldaScreen(viewModel: TeldaViewModel())
}
