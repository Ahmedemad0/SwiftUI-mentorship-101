//
//  HeaderButton.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

struct HeaderButton : View {
    var title : String
    var image : String
    var body: some View {
        VStack(spacing: 8) {
            Button(action: {
                print("HHHH")
            }) {
                VStack(spacing: 8) {
                    ZStack {
                        Circle()
                            .fill(.white.opacity(0.2))
                            .frame(width: 40, height: 40)
                        Image(systemName: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                    }
                    Text(title)
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
