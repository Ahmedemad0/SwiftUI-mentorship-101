//
//  PolygonShape.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 27/06/2025.
//

import SwiftUI

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

