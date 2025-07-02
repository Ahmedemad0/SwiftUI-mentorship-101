//
//  RoutableNavigationStack.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 14/10/2024.
//

import SwiftUI

@available(iOS 16.0, *)
public struct RoutableNavigationStack: View {
    @ObservedObject private var router: NavigationStackRouter
    @Environment(\.navigationRootTransition) private var navigationRootTransition

    public init(router: NavigationStackRouter) {
        _router = ObservedObject(wrappedValue: router)
    }

    public var body: some View {
        NavigationStack(path: $router.navigationStack) {
            Group {
                router.rootView?
                    .transition(navigationRootTransition)
            }
            .navigationDestination(for: AnyHashableView.self) {
                $0
            }
        }
        .fullScreenCover(item: $router.fullScreenCoverView) { $0 }
        .sheet(item: $router.sheetView) { $0 }
    }
}

public extension EnvironmentValues {
    @Entry
    var navigationRootTransition: AnyTransition = .identity
}

public extension RoutableNavigationStack {
    func navigationRootTransition(_ transition: AnyTransition) -> some View {
        environment(\.navigationRootTransition, transition)
    }
}
