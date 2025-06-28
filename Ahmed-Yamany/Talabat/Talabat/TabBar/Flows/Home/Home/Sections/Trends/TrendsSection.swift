//
//  TrendsSection.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct TrendsSection: View {
    @Binding var trends: [TrendViewModel]
    
    private let padding: CGFloat = 18

    var body: some View {
        VStack(alignment: .leading) {
            Text("Yalla Find the best Spot for you")
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding(.horizontal, padding)

            ScrollView(.horizontal) {
                LazyHStack(alignment: .top) {
                    ForEach($trends) { trend in
                        TrendCell(trend: trend)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, padding)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    TabBarFlow()
}
