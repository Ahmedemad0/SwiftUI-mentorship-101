//
//  SectionCell.swift
//  Task2
//
//  Created by OSX on 25/06/2025.
//

import SwiftUI

struct SectionCell: View {
    
    let section: sectionModel
    
    var body: some View {
        VStack(spacing: 8) {
            
            Image(section.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 60)
                .clipped()
                .cornerRadius(6)
                
            
            Text(section.name)
                .font(.caption)
                .fontWeight(.medium)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
        }
        
    }
}

#Preview {
    SectionCell(section: sectionModel(image: "1", name: "meal"))
}
