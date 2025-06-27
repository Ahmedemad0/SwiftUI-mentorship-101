//
//  CategoriesView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct CategoriesView: View {
    let category: CategoriesUIModel
    
    private let constants = CategoriesViewConstants()
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .center, spacing: constants.spacing) {
                VStack {
                    TalabatImage(
                        imageName: category.categoryImage, height: constants.imageSize, width: constants.imageSize)
                    .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 12)
                }
                .frame(width: 80, height: 80)
                .background(Color(red: 244 / 255, green: 237 / 255, blue: 227 / 255))
                .cornerRadius(16)
                
                Text(category.categoryName)
                    .font(.system(size: 12, weight: .regular))
                    .truncationMode(.middle)
                    .multilineTextAlignment(.center)
                    .frame(height: 30)
            }
            .frame(width: 80, height: 130)
            
            offerView            
        }
    }
    
    @ViewBuilder
    private var offerView: some View {
        Text(category.categoryExtraInfo ?? "")
            .foregroundStyle(.white)
            .font(.caption)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(.black)
            .cornerRadius(4)
            .opacity(category.categoryExtraInfo == nil ? 0 : 1)
    }
}

#Preview {
    CategoriesView(category: CategoriesUIModel(categoryName: "category1 categ", categoryImage: "category1", categoryExtraInfo: "Fast"))
}

private struct CategoriesViewConstants {
    let imageSize: CGFloat = 60
    let spacing: CGFloat = 8
}
