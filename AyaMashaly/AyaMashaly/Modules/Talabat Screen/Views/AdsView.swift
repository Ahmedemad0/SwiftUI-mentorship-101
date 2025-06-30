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
            Image(.ads)
                .resizable()
                .frame(width: 70, height: 80)
            
            VStack(spacing: 0) {
                HStack {
                    AdsHeaderView()
                    ProBadgeView()
                    
                }
                .padding(.horizontal, 10)
                .frame(height: 40)
                .background(Color.backgroundColor1)
                
                
                AdsDescriptionView()
            }
        }
        .frame(height: 80)
        .cornerRadius(12)
        .padding()
    }
}

struct AdsHeaderView: View {
    var body: some View {
        HStack {
            Text("Start ordering like a pro")
                .textStyle(size: 16, weight: .bold, color: .white)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Join")
                    .underline()
                    .textStyle(size: 14, weight: .bold, color: .white)
            }
        }
    }
}

struct ProBadgeView: View {
    var body: some View {
        VStack {
            Text("Pro")
                .textStyle(size: 16, weight: .bold, color: .backgroundColor1)
        }
        .viewStyle(width: 40, height: 20, radius: 5, color: .white, x: -285, y: 0)
        .rotationEffect(Angle.degrees(-1))
    }
}


struct AdsDescriptionView: View {
    var body: some View {
        HStack {
            Text("On food & groceries for EGP 79/mo")
                .textStyle(size: 14, weight: .bold, color: .black)
            Spacer()
        }
        .padding(.horizontal, 10)
        .frame(height: 40)
        .background(Color(UIColor.systemGray6))
    }
}


#Preview {
    AdsView()
}
