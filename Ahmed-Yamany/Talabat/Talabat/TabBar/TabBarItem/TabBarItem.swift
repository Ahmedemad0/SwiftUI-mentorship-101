//
//  TabBarItem.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//
import SwiftUI

@MainActor
struct TabBarItem: Identifiable, @preconcurrency Hashable, View {
    var id: TabBarItemType
    let title: String
    let icon: Image
    let view: () -> AnyView

    init(
        id: TabBarItemType,
        title: String,
        icon: Image,
        view: @escaping () -> AnyView
    ) {
        self.id = id
        self.title = title
        self.icon = icon
        self.view = view
    }

    var body: some View {
        view()
    }

    @MainActor
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    @MainActor
    static func == (lhs: TabBarItem, rhs: TabBarItem) -> Bool {
        lhs.id == rhs.id
    }
}
