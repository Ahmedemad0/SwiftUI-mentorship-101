//
//  CategoriesCell.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 25/06/2025.
//

import SwiftUI
import Kingfisher

struct CategoriesCell: View {
    
    var category : CategoriesDomainModel
    
    var body: some View {
        VStack{
            ZStack(alignment: .top) {
                VStack {
                    ZStack {
#warning("I think u don't repeat .frame again ")
                        PrimaryColor.opacity(0.1)
                            .cornerRadius(10)
                            .frame(width: 60, height: 60)
                
#warning("Why kingfisher")
                        NetworkImage(urlString: category.image, width: 30, height: 30)
                    }
                }
                
#warning("Why u don't user isHidden modifier instead")
#warning("Why u don't make custom modifier for theme or style?")
                if let badge = category.badge {
                    Text(badge)
                        .font(.caption.bold())
                        .padding(.horizontal,4)
                        .padding(.vertical,2)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .offset(y: -10)
                }
            }
            .frame(width: 60, height: 60)
            .padding(.top,10)
            
            
            Text(category.name)
                .font(.footnote.bold())
                .multilineTextAlignment(.center)
                .frame(width: 60)
        }
    }
}

