//
//  BalanceView.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

import SwiftUI

struct BalanceView: View {
    @State private var isHidden = true
    let balance: String

    var body: some View {
        HStack(spacing: Constants.hStackSpacing) {
            Button {
                withAnimation {
                    isHidden.toggle()
                }
            } label: {
                Image(systemName: isHidden ? "eye.slash" : "eye")
                    .foregroundColor(.white)
                    .padding(Constants.iconPadding)
                    .background(Color.white.opacity(Constants.iconBackgroundOpacity))
                    .clipShape(Circle())
                    .frame(width: Constants.iconSize, height: Constants.iconSize)
            }

            Text(balance)
                .foregroundStyle(.white)
                .font(.largeTitle.bold())
                .blur(radius: isHidden ? Constants.blurRadius : 0)
        }
        .padding()
    }

    // MARK: - Constants

    private enum Constants {
        static let hStackSpacing: CGFloat = 12
        static let iconPadding: CGFloat = 8
        static let iconBackgroundOpacity: Double = 0.2
        static let iconSize: CGFloat = 30
        static let blurRadius: CGFloat = 10
    }
}


#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        BalanceView(balance: "EGP 120")
            .padding()
    }
}
