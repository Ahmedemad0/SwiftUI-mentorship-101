//
//  CardDetails.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

import SwiftUI

struct CardDetails: View {
    let text: String
    @State private var isHidden: Bool = true

    var body: some View {
        HStack(spacing: Constants.hStackSpacing) {
            Button(action: {
                withAnimation(.easeInOut(duration: Constants.animationDuration)) {
                    isHidden.toggle()
                }
            }) {
                Image(systemName: "circlebadge.2")
                    .foregroundColor(.white)
                    .padding(Constants.iconPadding)
                    .background(Color.white.opacity(Constants.iconBackgroundOpacity))
                    .clipShape(Circle())
            }
            .frame(width: Constants.iconSize, height: Constants.iconSize)

            Text(text)
                .foregroundColor(.white)
                .font(.system(size: Constants.fontSize, weight: .semibold))
                .blur(radius: isHidden ? Constants.blurRadius : 0)
        }
        .padding(Constants.verticalPadding)
        .padding(.horizontal, Constants.horizontalPadding)
        .background(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .stroke(Color.white.opacity(Constants.borderOpacity), lineWidth: Constants.borderWidth)
        )
    }

    // MARK: - Constants

    private enum Constants {
        static let hStackSpacing: CGFloat = 12
        static let iconPadding: CGFloat = 6
        static let iconSize: CGFloat = 30
        static let iconBackgroundOpacity: Double = 0.2
        static let animationDuration: Double = 0.3
        static let fontSize: CGFloat = 12
        static let blurRadius: CGFloat = 8
        static let verticalPadding: CGFloat = 4
        static let horizontalPadding: CGFloat = 16
        static let cornerRadius: CGFloat = 18
        static let borderWidth: CGFloat = 1
        static let borderOpacity: Double = 0.3
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        CardDetails(text: "Hoda Elnaghy")
            .padding()
    }
}
