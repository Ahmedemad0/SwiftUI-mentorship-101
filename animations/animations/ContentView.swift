//
//  ContentView.swift
//  animations
//
//  Created by Ahmed Emad on 04/07/2025.
//

import SwiftUI

struct ContentView: View {
    let images = ["image1", "image2", "image3", "image4"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(images, id: \.self) { name in
                    cell(imageName: name)
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(20)
        .scrollTargetBehavior(.viewAligned)
    }
        
    func cell(imageName: String) -> some View {
        GeometryReader { geo in
            Image(imageName)
                .scaledToFill()
                .offset(x: geo.frame(in: .global).minX / 2)
                .frame(width: 300, height: 450)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .scrollTransition(axis: .horizontal) { view, phase in
                    view.scaleEffect(phase.isIdentity ? 1 : 0.8)
                }
        }
        .frame(width: 300, height: 450)
    }
    
}

#Preview {
    ContentView2()
}


struct ContentView2: View {
    let images = ["image1", "image2", "image3", "image4"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 5) {
                ForEach(images, id: \.self) { name in
                    cell(imageName: name)
                }
            }
//            .scrollTargetLayout()
        }
//        .scrollTargetBehavior(.viewAligned)
    }
        
    func cell(imageName: String) -> some View {
        GeometryReader { geo in
            Image(imageName)
                .scaledToFill()
                .offset(y: geo.frame(in: .global).minY / 2)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .scrollTransition(axis: .vertical) { view, phase in
                    view.scaleEffect(phase.isIdentity ? 1 : 0.8)
                }
        }
        .frame(width: 300, height: 300)
    }
    
}



