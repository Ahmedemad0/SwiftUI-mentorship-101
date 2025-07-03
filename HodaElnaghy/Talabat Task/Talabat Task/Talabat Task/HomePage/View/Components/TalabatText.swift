//
//  TalabatText.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct TalabatText: View {
    let text: String
    let textColor: Color
    let textWeight: Font.Weight
    let textSize: CGFloat
    
    var body: some View {
        Text(text)
            .font(.system(size: textSize, weight: textWeight))
            .foregroundStyle(textColor)
    }
}
