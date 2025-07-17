//
//  TeldaHeaderView.swift
//  AyaMashaly
//
//  Created by Aya Mashaly on 16/07/2025.
//

import SwiftUI

struct TeldaHeaderView: View {
    let offset: CGFloat
    
    var body: some View {
        VStack {
            UserAvatarView()
                .scaleEffect(offset < -150 ? 0.6 : 1.0)
                .offset(x: offset < -150 ? 80 : 0, y: offset < -150 ? 160 : 0)
                .animation(.easeInOut, value: offset)
                .padding(.bottom, 80)
            
            TotalBalanceView(balance: "12,000")
                .scaleEffect(offset < -150 ? 0.8 : 1.0)
                .offset(x: offset < -150 ? -100 : 0, y: offset < -150 ? 20 : 0)
                .animation(.easeInOut, value: offset)
            
            PointsView(points: "185,000")
                .scaleEffect(offset < -150 ? 0.8 : 1.0)
                .offset(x: offset < -150 ? -100 : 0, y: offset < -150 ? 20 : 0)
                .animation(.easeInOut, value: offset)
                .padding(.bottom, 80)
            
        }
        .frame(maxWidth: .infinity, alignment: offset < -150 ? .leading : .center)
        .padding(.horizontal)
        .padding(.top, offset < -150 ? 40 : 0)
    }
}

struct UserAvatarView: View {
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 45, height: 45)
                .padding()
                .overlay(
                    Image(.profile)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                )
        }
    }
}


struct TotalBalanceView: View {
    let balance: String
    
    var body: some View {
        HStack {
            Button {} label: {
                Image(systemName: "eye.slash")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
            }
            .viewStyle(width: 30, height: 30, radius: 15, color: .gray.opacity(0.4))
            
            Text("EGP \(balance)")
                .textStyle(size: 25, weight: .bold, color: .white)
                .blur(radius: 5)
        }
    }
}

struct PointsView: View {
    let points: String
    
    var body: some View {
        HStack(spacing: 5) {
            Image(.points)
                .foregroundColor(.white)
            Text(points)
                .foregroundColor(.white.opacity(0.8))
                .font(.subheadline)
                .blur(radius: 5)
        }
        .frame(height: 10)
        .padding()
        .background(Color.gray.opacity(0.2))
        .clipShape(Capsule())
    }
}
