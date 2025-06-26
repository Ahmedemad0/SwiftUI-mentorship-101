//
//  CategoriesSection.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct CategoriesSection : View {
    var categories : [CategoriesDomainModel]
    
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false){
            LazyHStack(alignment: .top){
                ForEach(categories) { category in
                    CategoriesCell(category: category)
                }
            }.padding(.horizontal)
        }
    }
}
