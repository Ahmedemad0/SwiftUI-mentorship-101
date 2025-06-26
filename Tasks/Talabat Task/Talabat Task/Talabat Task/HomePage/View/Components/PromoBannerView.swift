//
//  PromoBannerView.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 26/06/2025.
//

import SwiftUI

struct PromoBannerView: View {
    let promoTitle: String = "Start ordering like a pro"
    let promoDescription: String = "On food & groceries for EGP 79/mo"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 0) {
                    Color(red: 131 / 255, green: 24 / 255, blue: 216 / 255, opacity: 1.0)
                    Color(red: 235 / 255, green: 232 / 255, blue: 251 / 255, opacity: 1.0)
                }
                HStack {
                    ZStack(alignment: .topTrailing) {
                        ZStack {
                            PolygonShape(sides: 14)
                                .frame(width: 100, height: 100)
                                .foregroundStyle(Color(red: 131 / 255, green: 24 / 255, blue: 216 / 255, opacity: 1.0))
                            
                            TalabatImage(imageName: "girlOnBanner", height: 110, width: 110)
                                .padding(.leading, -30)
                        }
                        proView
                            .rotationEffect(.degrees(-25))
                            .padding(.top, 16)
                            .padding(.trailing, 8)
                    }
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                               TalabatText(
                                   text: promoTitle,
                                   textColor: .white,
                                   textWeight: .bold,
                                   textSize: 12)
                               Spacer()
                               TalabatText(
                                   text: "Join",
                                   textColor: .white,
                                   textWeight: .semibold,
                                   textSize: 12)
                               .underline()
           
                           }
                        .padding(.trailing, 8)
                        HStack {
                            TalabatText(
                                text: promoDescription,
                                textColor: .black,
                                textWeight: .light,
                                textSize: 12)
                        }
                    }
                }
                
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: 100)
        .clipped()
        .cornerRadius(16)
    }
    
    @ViewBuilder
    private var proView: some View {
        
        TalabatText(text: "Pro", textColor: Color(red: 131 / 255, green: 24 / 255, blue: 216 / 255, opacity: 1.0), textWeight: .bold, textSize: 14)
        
            .padding(.horizontal, 4)
            .padding(.vertical, 2)
            .background(.white)
    }
}

#Preview {
    PromoBannerView()
}


struct PolygonShape: Shape {
    var sides: Int

    func path(in rect: CGRect) -> Path {
        guard sides >= 3 else { return Path() }

        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2

        var path = Path()
        let angle = (2 * .pi) / CGFloat(sides)

        for i in 0..<sides {
            let x = center.x + radius * cos(CGFloat(i) * angle - .pi / 2)
            let y = center.y + radius * sin(CGFloat(i) * angle - .pi / 2)

            if i == 0 {
                path.move(to: CGPoint(x: x, y: y))
            } else {
                path.addLine(to: CGPoint(x: x, y: y))
            }
        }

        path.closeSubpath()
        return path
    }
}
