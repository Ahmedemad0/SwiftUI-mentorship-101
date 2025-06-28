//
//  CategoryCell.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

struct CategoryCell: View {
    let category: CategoryEntity

    private let width: CGFloat = 72
    private let heigth: CGFloat = 120

    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Image(category.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: width)
                    .background(.orange.opacity(0.2), in: .rect(cornerRadius: 8))
                    .padding(.top, 8)

                if let offer = category.offer {
                    Text(offer)
                        .font(.caption2)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 4)
                        .background(.black, in: .rect(cornerRadius: 4))
                }
            }

            Text(category.name)
                .font(.caption)

            Spacer()
        }
        .frame(width: width, height: heigth)
    }
}

#Preview {
    TabBarFlow()
}
