//
//  TeldaHomeView.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

struct TeldaHomeView : View {
    
    @State private var animateTransactions = false
    @State private var animateCells = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HeaderHomeView()
            ZStack {
                Color.black
                VStack {
                    transactionsView()
                }
                .frame(maxWidth: .infinity)
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                animateTransactions = true
            }
            // Small delay for the cell animation
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                animateCells = true
            }
        }
    }
    
    func transactionsView() -> some View {
        VStack(spacing: 16) {
            ForEach(0..<3) { index in
                transactionCell(index: index)
            }
            
            Button {
                // Action
            } label: {
                Text("See All")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(8)
            }
            .scaleEffect(animateTransactions ? 1 : 0.8)
            .opacity(animateTransactions ? 1 : 0)
            .animation(.interpolatingSpring(stiffness: 100, damping: 10).delay(0.7), value: animateTransactions)
        }
        .padding()
        .background(
            ZStack {
                Color.black
                Color.gray.opacity(0.2)
            }
        )
        .cornerRadius(16)
        .padding()
        .offset(y: -40)
        .scaleEffect(animateTransactions ? 1 : 0.95)
        .opacity(animateTransactions ? 1 : 0)
        .animation(.easeOut(duration: 0.6), value: animateTransactions)
    }
    
    func transactionCell(index: Int) -> some View {
        HStack(alignment: .top) {
            Image(.header)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Telecom Egypt")
                Text("Tuesday 4:45 PM")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .foregroundStyle(.white)
            
            Spacer()
            Text("260 EGP")
                .foregroundStyle(.white)
        }
        .opacity(animateCells ? 1 : 0)
        .offset(y: animateCells ? 0 : 20)
        .animation(.easeOut(duration: 0.5).delay(Double(index) * 0.15), value: animateCells)
    }
}
