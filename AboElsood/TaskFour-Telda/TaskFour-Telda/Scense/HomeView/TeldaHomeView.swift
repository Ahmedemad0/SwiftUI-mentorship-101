//
//  TeldaHomeView.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import SwiftUI

struct TeldaHomeView : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            HeaderHomeView()
            
        }
        .background(Color.black)
        .ignoresSafeArea()
        
    }
}
