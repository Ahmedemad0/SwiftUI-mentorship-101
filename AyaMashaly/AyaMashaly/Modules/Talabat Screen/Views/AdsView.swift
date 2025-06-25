//
//  AdsView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 25/06/2025.
//

import SwiftUI

struct AdsView: View {
    var body: some View {
        HStack(spacing: 0) {
#warning("Avoid using strings")
            Image("adsImage")
                .resizable()
                .frame(width: 70, height: 80)
            
            VStack(spacing: 0) {
#warning("Why ZStack here")
                ZStack {
                    HStack {
                        
#warning("Here, You don't use your custom modifiers")
                        Text("Start ordering like a pro")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("Join")
                                .underline()
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("Pro")
                                .headerSectionStyle(size: 16, weight: .bold, color: .backgroundColor1)
                            
                        }
                        .viewStyle(width: 40, height: 20, radius: 5, color: .white, x: -285, y: 0)
                            .rotationEffect(Angle.degrees(-1))
                        
                    }
                    .padding(.horizontal, 10)
                    .frame(height: 40)
                    .background(Color.backgroundColor1)
                }
                
                
                HStack {
#warning("Here, You don't use your custom modifiers")
                    Text("On food & groceries for EGP 79/mo")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.horizontal, 10)
                .frame(height: 40)
                .background(Color(UIColor.systemGray6))
            }
        }
        .frame(height: 80)
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    AdsView()
}
