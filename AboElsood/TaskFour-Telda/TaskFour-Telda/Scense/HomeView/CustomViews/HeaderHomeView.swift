//
//  HeaderHomeView.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

struct HeaderHomeView: View {
    var body: some View {
        ZStack {
            GeometryReader { geo in
                let offset = geo.frame(in: .global).minY
                let scale = offset > 0 ? 1 + (offset / 500) : 1

                Image("HeaderImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .scaleEffect(scale, anchor: .center)
                    .offset(y: offset > 0 ? -offset : 0)
            }
            .frame(height: 300) // ✅ Keep this here to constrain GeometryReader

            VStack {
                HStack {
                    Spacer()
                    Text("AE")
                        .circleProfileStyle()
                        .padding(.trailing)
                }

                Spacer()

                HStack {
                    Circle()
                        .fill(.white.opacity(0.2))
                        .frame(width: 40, height: 40)
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .frame(width: 80, height: 40)
                }

                Spacer()

                HStack {
                    ForEach(headerButtonData) { button in
                        HeaderButton(title: button.title, image: button.image)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .frame(height: 300)
            .padding(.top, topPadding)
        }
        .frame(height: 300) // ✅ Constrain ZStack height

    }
}
