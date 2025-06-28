//
//  AccountFlow.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI
import Coordinator

struct AccountFlow: View {
    @StateObject private var router = NavigationStackRouter()

    var body: some View {
        RoutableNavigationStack(router: router)
            .onDidLoad {
                setRoot()
            }
    }

    private func setRoot() {
        let view = AccountScreen()
        router.setView(AnyHashableView(view), animated: false, completion: nil)
    }
}

#Preview {
    AccountFlow()
}
