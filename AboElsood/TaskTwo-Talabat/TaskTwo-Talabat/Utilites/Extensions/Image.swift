//
//  Image.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI
import Kingfisher

struct NetworkImage: View {
    let urlString: String
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        if let url = URL(string: urlString) {
            KFImage(url)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .cornerRadius(5)
                .allowsHitTesting(false)
        } else {
            Image(systemName: "photo")
                .resizable()
                .frame(width: width, height: height)
                .cornerRadius(5)
                .clipped()
        }
    }
}
