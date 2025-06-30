//
//  HeaderView.swift
//  Task2
//
//  Created by OSX on 30/06/2025.
//

import SwiftUI

struct HeaderView: View {
    
    @ObservedObject var viewModel: MealsViewModel
    
    var body: some View {
        ZStack {
            Color(.orange)
            
            VStack(alignment: .leading) {
                
                Spacer()
                
                HStack(spacing: 6) {
                    Text("Deliver to")
                    
                    Text("Apartment")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Image("down-arrow")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .foregroundColor(.white)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search for Pizza", text: $viewModel.searchText)
                        .autocorrectionDisabled(true)
                        .disableAutocorrection(true)
                        
                }
                .padding()
                .frame(height: 40)
                .background(.white)
                .cornerRadius(20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.all, 16)
        }
        .frame(height: 200)
    }
}

#Preview {
    HeaderView(viewModel: MealsViewModel())
}
