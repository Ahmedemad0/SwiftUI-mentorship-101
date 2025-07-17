//
//  HeaderHomeView.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

struct HeaderHomeView: View {
    
    @State private var animateHeader = false
    @State private var animateContent = false
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                let offset = geo.frame(in: .global).minY
                let scale = offset > 0 ? 1 + (offset / 500) : 1
                
                ZStack {
                    Image("HeaderImage")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 500)
                        .offset(y: offset > 0 ? -offset : 0)
                        .scaleEffect(scale, anchor: .center)
                        .opacity(animateHeader ? 1 : 0)
                        .scaleEffect(animateHeader ? 1 : 1.1)
                        .animation(.easeOut(duration: 1.2), value: animateHeader)
                }
            }
            .frame(height: 500)
            
            VStack {
                HStack {
                    Spacer()
                    Text("AE")
                        .circleProfileStyle()
                        .padding(.trailing)
                        .opacity(animateContent ? 1 : 0)
                        .offset(x: animateContent ? 0 : 50)
                        .animation(.easeOut(duration: 0.6).delay(0.2), value: animateContent)
                }
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(.white.opacity(0.2))
                        .frame(width: 40, height: 40)
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .frame(width: 80, height: 40)
                }
                .opacity(animateContent ? 1 : 0)
                .offset(y: animateContent ? 0 : 40)
                .scaleEffect(animateContent ? 1 : 0.7)
                .animation(.interpolatingSpring(stiffness: 100, damping: 10).delay(0.3), value: animateContent)

                
                Spacer()
                
                HStack(spacing: 20) {
                    ForEach(headerButtonData) { button in
                        HeaderButton(title: button.title, image: button.image)
                            .opacity(animateContent ? 1 : 0)
                            .offset(y: animateContent ? 0 : 20)
                            .animation(.easeOut(duration: 0.6).delay(0.6), value: animateContent)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.top, topPadding)
            .padding(.bottom, 40)
        }
        .frame(height: 500)
        .onAppear {
            animateHeader = true
            animateContent = true
        }
    }
}
