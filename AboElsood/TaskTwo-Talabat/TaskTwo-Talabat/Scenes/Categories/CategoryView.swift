//
//  CategoryView.swift
//  TaskTwo-Talabat
//
//  Created by 2B on 03/07/2025.
//

import SwiftUI

struct CategoryView: View {
    
    var category: CategoriesDomainModel
    
    var body: some View {
        Text(category.name)
    }
}
