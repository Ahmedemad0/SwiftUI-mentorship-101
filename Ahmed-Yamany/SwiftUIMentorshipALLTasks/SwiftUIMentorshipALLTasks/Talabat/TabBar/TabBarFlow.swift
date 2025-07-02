//
//  TabBarFlow.swift
//  Talabat
//
//  Created by Ahmed Yamany on 28/06/2025.
//

import SwiftUI

struct TabBarFlow: View {
    @StateObject private var tabBarManager = TabBarFlowManager()

    var body: some View {
        TabView(selection: $tabBarManager.selectedItem) {
            ForEach(tabBarManager.items) { item in
                item.tag(item)
                    .tabItem {
                        Label {
                            Text(item.title)
                        } icon: {
                            item.icon
                                .renderingMode(.template)
                        }
                    }
            }
        }
        .tint(Color.talabat)
    }
}

#Preview {
    TabBarFlow()
}
