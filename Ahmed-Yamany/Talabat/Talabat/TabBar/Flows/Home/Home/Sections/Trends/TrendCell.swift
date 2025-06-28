//
//  TrendCell.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct TrendCell: View {
    @Binding var trend: TrendViewModel

    private let width: CGFloat = 182
    private let heigth: CGFloat = 182 + 80 + 12
    private let radius: CGFloat = 12

    var body: some View {
        VStack {
            trendImageView

            VStack(alignment: .leading) {
                nameView
                ratingView
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
        .frame(width: width)
    }

    private var trendImageView: some View {
        Image(trend.image)
            .resizable()
            .frame(maxWidth: .infinity)
            .frame(height: width)
            .clipShape(.rect(cornerRadius: radius))
            .overlay(alignment: .top) {
                HStack {
                    Spacer()

                    favouriteButton
                }
                .padding(12)
            }
    }

    private var favouriteButton: some View {
        Toggle("", isOn: $trend.isFavourited)
            .toggleStyle(FavouriteToggleStyle())
    }

    private var nameView: some View {
        HStack {
            if trend.isPro {
                Text("Pro")
                    .foregroundStyle(.white)
                    .padding(.horizontal, 2)
                    .background(.purple)
                    .font(.system(size: 10))
                    .clipShape(.rect(cornerRadius: 2))
            }

            Text(trend.name)
                .font(.headline)
                .bold()
        }
    }

    private var ratingView: some View {
        HStack(spacing: 4) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)

            Text(String(trend.rate))
                .bold()

            Text("(\(trend.totalRate)+)")
                .foregroundColor(.gray)
        }
        .font(.caption2)
    }
}

#Preview {
    TabBarFlow()
}
