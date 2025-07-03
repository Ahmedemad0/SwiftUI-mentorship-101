//
//  JaggedTopEdge.swift
//  Talabat Task
//
//  Created by Hoda Elnaghy on 27/06/2025.
//

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
