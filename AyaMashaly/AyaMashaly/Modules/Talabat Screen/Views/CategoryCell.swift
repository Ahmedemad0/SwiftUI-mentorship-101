//
//   CategoryCell.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 24/06/2025.
//

import SwiftUI

struct CategoryCell: View {
    let categortModel: CategoryModel
    var body: some View {
        VStack(spacing: 2) {
            ZStack {
                Image(categortModel.image)
                    .resizable()
                    .padding()
                    .frame(width: 80, height: 80)
                    .background(Color("backgroundColor"))
                    .cornerRadius(20)
                
                if let badgeText = categortModel.badgeText {
                    Text(badgeText)
                        .textStyle(size: 10, weight: .bold, color: .white)
                        .frame(width: 30, height: 5)
                        .padding(10)
                        .background(.black)
                        .cornerRadius(5)
                        .offset(x: 0, y: -40)
                }
            }.frame(height: 120)
            
            Text(categortModel.title)
                .font(.system(size: 14, weight: .bold))
                .frame(width: 80)
                .multilineTextAlignment(.center)
        }
    }
}
