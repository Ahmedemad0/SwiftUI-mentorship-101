//
//  TabBarItem.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

@MainActor
extension TabBarItem {
    static var home: Self {
        TabBarItem(
            id: .home,
            title: "Home",
            icon: Image(.homeIcon),
            view: { AnyView(HomeFlow()) }
        )
    }

    static var order: Self {
        TabBarItem(
            id: .order,
            title: "Order",
            icon: Image(.order),
            view: { AnyView(OrderFlow()) }
        )
    }

    static var account: Self {
        TabBarItem(
            id: .account,
            title: "Account",
            icon: Image(.account),
            view: { AnyView(AccountFlow()) }
        )
    }
}
