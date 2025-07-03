//
//  CategoriesSection.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct CategoriesSection : View {
    var categories : [CategoriesDomainModel]
    var onTap: ((CategoriesDomainModel) -> Void)? = nil
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false){
            LazyHStack(alignment: .top){
                ForEach(categories) { category in
                    CategoriesCell(category: category){ category in
                        onTap?(category)
                    }
                }
            }.padding(.horizontal)
        }
    }
}
