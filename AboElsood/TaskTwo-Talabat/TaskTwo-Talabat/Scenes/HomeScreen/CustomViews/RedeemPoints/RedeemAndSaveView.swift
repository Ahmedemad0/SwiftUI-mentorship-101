//
//  RedeemAndSaveView.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct RedeemAndSaveView : View {
    
    var text: String
    var image: String
    
    var body: some View {
        HStack() {
            Image(systemName: image)
                .frame(width: 30 ,height: 30)
                .scaledToFill()
                .foregroundStyle(.orange)
            Text(text)
                .font(.system(size: 14).bold())
        }
        .frame(maxWidth: .infinity)
        .addBorders(radius: 10,color: .gray.opacity(0.6))
    }
}
