//
//  GiftCell.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import SwiftUI

struct GiftCell: View {
    
    let model: sectionModel
    
    var body: some View {
        
        HStack(spacing: 8) {
            Image(model.image)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            
            Text(model.name)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.primary)
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
        )
    }
}

#Preview {
    GiftCell(model: sectionModel(image: "ticket", name: "2,945"))
}
