//
//  TeldaView.swift
//  animations
//
//  Created by Ahmed Emad on 04/07/2025.
//


import SwiftUI

struct TeldaView: View {

    @State var scale: CGFloat = 1
    @State var offset: CGFloat = 0
    var body: some View {
        ScrollView {
            ZStack {
                GeometryReader { geo in
                    Color.clear
                        .onChange(of: geo.frame(in: .global).minY) { oldValue, newValue in
                            let value = 1 + newValue / 500
                            scale = value < 1 ? 1 : value
                            offset = newValue
                        }
                }
                VStack {
                    priceView()
                        .padding(.top, 240)
                    
                    HStack {
                        ZStack {
                            Color.red
                                .frame(width: 50, height: 50)
                        }
                        .offset(x: offset > 0 ? 0 : offset)
                        
                        ZStack {
                            Color.red
                                .frame(width: 50, height: 50)
                        }
                        .offset(x: -offset < 0 ? 0 : -offset)
                    }
                    balanceOptionsView()
                        .padding(.top, 100)
                    
                    
                    VStack {
                        transactionsView()
                        
                        ZStack {
                            Color.gray
                                .frame(height: 600)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .padding(.top, 40)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .background {
            ZStack {
                Image(.wallpaper1)
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(scale)
                Color.black.opacity(0.3)
            }
        }
        .ignoresSafeArea()
    }
    
    
    func priceView() -> some View {
        HStack {
            Button {
                
            } label: {
                Text("Eye")
                   
            }

            Text("1200 EGP")
        }
        .foregroundStyle(.white)
    }
    
    func balanceOptionsView() -> some View {
        HStack {
            Text("Add money")
            Spacer()
            Text("Withdraw")
            Spacer()
            Text("Insights")
            Spacer()
            Text("Cards")
        }
        .foregroundStyle(.white)
        .padding(.horizontal, 20)

    }
    
    
    func transactionsView() -> some View {
        VStack {
            transactionCell()
            transactionCell()
            transactionCell()
            
            Button {
                
            } label: {
                Text("See All")
            }

        }
        .padding()
        .background(Color.white.opacity(0.4))
        .cornerRadius(16)
        .padding()
        .offset(y: -50)
        
    }
    
    func transactionCell() -> some View {
        HStack(alignment: .top) {
            
            Image(.image1)
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            
            VStack {
                Text("Telecom Egypt")
                Text("Tuesday 4:45 PM")
            }
            
            Spacer()
            
            
            Text("260 EGP")
        }
        
    }
}

#Preview {
    TeldaView()
}
