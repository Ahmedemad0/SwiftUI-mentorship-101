//
//  CategoryDetailsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 02/07/2025.
//

import SwiftUI

struct CategoryDetailsView: View {
    let category: CategoryModel
    
    var body: some View {
        Text("Category: \(category.title)")
    }
}
