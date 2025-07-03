//
//  RatingView.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//


import SwiftUI

import SwiftUI

struct RatingView: View {
    @State private var rating: Int = 0
    var maxRating: Int = 5
    var filledColor: Color = .yellow
    var emptyColor: Color = .gray
    var size: CGFloat = 20
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(1...maxRating, id: \.self) { index in
                Image(systemName: index <= rating ? "star.fill" : "star")
                    .resizable()
                    .foregroundColor(index <= rating ? filledColor : emptyColor)
                    .frame(width: size, height: size)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}
