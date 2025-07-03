//
//  HomeView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        ScrollView {
            
            ZStack {
                
                (Color(red: 245 / 255, green: 89 / 255, blue: 6 / 255))
                
                VStack {
                    VStack(spacing: 12) {
                        HStack {
                            TalabatText(text: "Deliver to", textColor: .white, textWeight: .regular, textSize: 14)
                            TalabatText(text: "Apartment", textColor: .white, textWeight: .bold, textSize: 14)
                            
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            TextField("Search...", text: $searchText)
                                .foregroundColor(.black)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(24)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                    }
                    .padding()
                    .padding(.top, 60)
                    
                    ZStack {
                        JaggedTopEdge()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundStyle(.white)
                        
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(viewModel.categoriesArray, id: \.self) { item in
                                        CategoriesView(category: item)
                                            .onTapGesture {
                                                coordinator.push(.food(id: "0"))
                                            }
                                    }
                                }
                                .padding(.horizontal)
                            }
                            
                            TalabatText(text: "Yalla, find the best spots for you", textColor: .black, textWeight: .semibold, textSize: 18)
                                .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(Array(viewModel.restaurantsArray.enumerated()), id: \.element.id) { index, item in
                                        RestaurantView(model: item, actionBlock: {
                                            viewModel.restaurantsArray[index].isFavorited.toggle()
                                        })
                                    }
                                }
                                .padding(.horizontal)
                            }
                            
                            TalabatText(text: "Redeem and save", textColor: .black, textWeight: .semibold, textSize: 18)
                                .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(viewModel.vouchersArray, id: \.self) { item in
                                        VoucherView(voucherImage: item.voucherImage, voucherDescription: item.voucherDescription)
                                    }
                                }
                                .padding(.horizontal)
                            }
                            
                            PromoBannerView()
                                .padding()
                        }
                        .padding(.vertical, 32)
                    }
                }
            }
        }
        
        .ignoresSafeArea(edges: .top)
        .onAppear {
            viewModel.getData()
        }
    }
    
}


#Preview {
    HomeView()
}
