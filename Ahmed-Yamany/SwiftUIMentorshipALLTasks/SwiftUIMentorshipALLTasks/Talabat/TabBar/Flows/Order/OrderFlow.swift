//
//  OrderFlow.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI
import Coordinator

struct OrderFlow: View {
    @StateObject private var router = NavigationStackRouter()
    
    var body: some View {
        RoutableNavigationStack(router: router)
            .onDidLoad {
                setRoot()
            }
    }
    
    private func setRoot() {
        let view = OrderScreen()
        router.setView(AnyHashableView(view), animated: false, completion: nil)
    }
}

#Preview {
    OrderFlow()
}
