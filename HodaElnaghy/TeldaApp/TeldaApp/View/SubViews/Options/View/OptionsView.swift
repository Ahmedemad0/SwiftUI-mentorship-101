//
//  OptionsView.swift
//  TeldaApp
//
//  Created by Hoda Elnaghy on 08/07/2025.
//

import SwiftUI

// MARK: - View
struct OptionsView: View {
    let model: OptionsModel

    var body: some View {
        VStack(spacing: Constants.spacing) {
            ZStack {
                Circle()
                    .fill(Constants.iconBackgroundColor)
                    .frame(width: Constants.iconSize, height: Constants.iconSize)

                Image(systemName: model.icon)
                    .foregroundColor(Constants.iconColor)
                    .font(.system(size: Constants.iconFontSize, weight: .medium))
            }

            Text(model.name)
                .font(Constants.textFont)
                .foregroundColor(Constants.textColor)
        }
    }
}

// MARK: - Constants

private struct Constants {
    static let iconSize: CGFloat = 40
    static let iconFontSize: CGFloat = 20
    static let spacing: CGFloat = 12

    static let iconColor: Color = .white
    static let iconBackgroundColor: Color = Color.white.opacity(0.2)

    static let textFont: Font = .headline
    static let textColor: Color = .white
}

// MARK: - Preview

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        OptionsView(model: OptionsModel(name: "Add money", icon: "plus"))
    }
}
