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
    let rows = [GridItem(.fixed(150))]
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
                                LazyHGrid(rows: rows, alignment: .top, spacing: 8) {
                                        ForEach(viewModel.categoriesArray, id: \.self) { item in
                                            CategoriesView(category: item)
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            
                            TalabatText(text: "Yalla, find the best spots for you", textColor: .black, textWeight: .semibold, textSize: 18)
                                .padding()
                        }
                        .padding(.vertical, 32)
                    }
                }
                
                
            }
        }
        
        .ignoresSafeArea()
        .onAppear {
            viewModel.getData()
        }
    }
        
}


#Preview {
    HomeView()
}
import SwiftUI

struct JaggedTopEdge: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 0, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: 15))

        path.addLine(to: CGPoint(x: rect.width * 0.10, y: 10))
        path.addLine(to: CGPoint(x: rect.width * 0.15, y: 8))
        path.addLine(to: CGPoint(x: rect.width * 0.35, y: 14))
        path.addLine(to: CGPoint(x: rect.width * 0.55, y: 4))
        path.addLine(to: CGPoint(x: rect.width * 0.75, y: 10))
        path.addLine(to: CGPoint(x: rect.width * 0.9, y: 5))
        path.addLine(to: CGPoint(x: rect.maxX, y: 10))

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))

        return path
    }
}

struct CategoriesUIModel: Hashable {
    let id = UUID()
    let categoryName: String
    let categoryImage: String
    let categoryExtraInfo: String?
}

struct RestaurantUIModel {
    let id = UUID()
    let restauantImage: String
    let restaurantLogo: String
    let restaurantName: String
    let restaurantRating: String
    let restaurantReviewCount: String
    let offerLabel: String?
    let isRestaurantPro: Bool
}

struct VoucherUIModel {
    let id = UUID()
    let voucherImage: String
    let voucherDescription: String
}
