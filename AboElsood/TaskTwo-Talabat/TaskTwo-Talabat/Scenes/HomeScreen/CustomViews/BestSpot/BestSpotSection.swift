//
//  BestSpotSection.swift
//  TaskTwo-Talabat
//
//  Created by Ahmed Abo Elsood on 26/06/2025.
//

import SwiftUI

struct BestSpotSection: View {
    
    var bestSpotsResturants: [BestSpotsDomainModel] = []
    var onFavoriteTapped: (Int) -> Void
    var body: some View {
        VStack(alignment: .leading){
            Text("Yalla , find the best spot for you")
                .font(.headline.bold())
            ScrollView(.horizontal,showsIndicators: false){
                LazyHStack{
                    ForEach(bestSpotsResturants,id: \.id){ restaurant in
                        BestSpotCell(restorant: restaurant) { id in
                            onFavoriteTapped(id)
                        }
                        .frame(width: 150)
                    }
                }
            }
        }.padding(.leading)
    }
}
