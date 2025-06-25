//
//  RedeemView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import SwiftUI

struct RedeemView: View {
    @StateObject private var viewModel = TalabatViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Redeem and Save")
                .headerSectionStyle(size: 20, weight: .medium, color: .black)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.redeemItems) { item in
                        RedeemComponents(item: item)
                    }
                }
                
            }
        }.padding()
            .onAppear{
                viewModel.fetchRedeemItems()
            }
    }
}

struct RedeemComponents: View {
    let item: RedeemItemModel
    
    var body: some View {
        HStack() {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            Text(item.pointsText)
                .headerSectionStyle(size: 16, weight: .medium, color: .black)
            Spacer()
            
        }
        .frame(width: 150, height: 50)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}


#Preview {
    RedeemView()
}
