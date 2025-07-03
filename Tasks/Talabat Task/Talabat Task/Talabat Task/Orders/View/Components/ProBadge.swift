//
//  ProBadge.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 03/07/2025.
//

import SwiftUI

// MARK: - Pro Badge View
struct ProBadge: View {
    var body: some View {
        TalabatText(
            text: "Pro",
            textColor: .white,
            textWeight: .bold,
            textSize: Constants.proFontSize
        )
        .padding(.horizontal, Constants.proHorizontalPadding)
        .padding(.vertical, Constants.proVerticalPadding)
        .background(Color.proPurple)
    }
}

// MARK: - Constants
private struct Constants {
    static let proFontSize: CGFloat = 8
    static let proHorizontalPadding: CGFloat = 4
    static let proVerticalPadding: CGFloat = 2
}

