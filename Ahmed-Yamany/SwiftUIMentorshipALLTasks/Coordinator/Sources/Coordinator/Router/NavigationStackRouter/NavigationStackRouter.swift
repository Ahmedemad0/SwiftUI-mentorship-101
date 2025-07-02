//
//  NavigationStackRouter.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 13/10/2024.
//

import SwiftUI

@MainActor
public class NavigationStackRouter: Router, ObservableObject {
    @Published public internal(set) var rootView: AnyHashableView?
    @Published public internal(set) var navigationStack: [AnyHashableView] = []
    @Published public internal(set) var fullScreenCoverView: AnyHashableView?
    @Published public internal(set) var sheetView: AnyHashableView?

    public init() {}

    public func push(_ view: AnyHashableView, animated: Bool, completion: (() -> Void)?) {
        UIView.performTransitionWithCompletion(animated: animated, action: { @MainActor in
            let hashableView = view
            if rootView != nil {
                navigationStack.append(hashableView)
            } else {
                rootView = hashableView
            }
        }, completion: completion)
    }

    public func push(contentsOf viewsToAppend: [AnyHashableView], animated: Bool, completion: (() -> Void)?) {
        var viewsToPush = navigationStack + viewsToAppend
        if let rootView {
            viewsToPush = [rootView] + viewsToPush
        }
        setViews(viewsToPush, animated: animated, completion: completion)
    }

    public func setView(_ view: AnyHashableView, animated: Bool, completion: (() -> Void)?) {
        setViews([view], animated: animated, completion: completion)
    }

    public func setViews(_ views: [AnyHashableView], animated: Bool, completion: (() -> Void)?) {
        UIView.performTransitionWithCompletion(animated: animated, action: {
            guard let firstView = views.first else {
                rootView = nil
                navigationStack = []
                return
            }

            rootView = firstView

            if views.count > 1 {
                let intermediateViews = views.dropFirst().dropLast()
                let lastView = views.last

                navigationStack = intermediateViews.map { $0 }

                if let lastView {
                    navigationStack.append(lastView)
                }
            } else {
                navigationStack = []
            }
        }, completion: completion)
    }

    public func replaceLastView(with view: AnyHashableView, animated: Bool, completion: (() -> Void)?) {
        replaceView(at: navigationStack.endIndex, with: view, animated: animated, completion: completion)
    }

    public func replaceFirstView(with view: AnyHashableView, animated: Bool, completion: (() -> Void)?) {
        replaceView(at: 0, with: view, animated: animated, completion: completion)
    }

    public func replaceView(at index: Int, with view: AnyHashableView, animated: Bool, completion: (() -> Void)?) {
        let stack = Array([rootView].compactMap { $0 } + navigationStack)
        setViews(stack.replacedElement(at: index, with: view), animated: animated, completion: completion)
    }

    public func insert(_ view: AnyHashableView, at index: Int, animated: Bool, completion: (() -> Void)?) {
        insert(contentsOfViews: [view], at: index, animated: animated, completion: completion)
    }

    public func insert(contentsOfViews viewsToInsert: [AnyHashableView], at index: Int, animated: Bool, completion: (() -> Void)?) {
        let stack = [rootView].compactMap { $0 } + navigationStack

        setViews(
            stack.inserted(contentsOf: viewsToInsert, at: index),
            animated: animated,
            completion: completion
        )
    }

    public func pop(animated: Bool, completion: (() -> Void)?) {
        UIView.performTransitionWithCompletion(animated: animated, action: {
            _ = navigationStack.removeLast()
        }, completion: completion)
    }

    public func popToRoot(animated: Bool, completion: (() -> Void)?) {
        UIView.performTransitionWithCompletion(animated: animated, action: {
            navigationStack.removeAll()
        }, completion: completion)
    }

    public func present(
        _ view: AnyHashableView,
        animated: Bool,
        style: PresentationStyle,
        completion: (() -> Void)?
    ) {
        func fullScreen() {
            fullScreenCoverView = view
            sheetView = nil
        }

        func overFullScreen() {
            if #available(iOS 16.4, *) {
                fullScreenCoverView = AnyHashableView(view.presentationBackground(.clear), type: view.type)
            } else {
                fullScreenCoverView = AnyHashableView(view.transparentBackground(), type: view.type)
            }
            sheetView = nil
        }

        func sheet() {
            sheetView = view
            fullScreenCoverView = nil
        }

        UIView.performTransitionWithCompletion(animated: animated, action: {
            switch style {
            case .sheet:
                sheet()
            case .fullScreen:
                fullScreen()
            case .overFullScreen:
                overFullScreen()
            }
        }, completion: completion)
    }

    public func dismiss(animated: Bool, completion: (() -> Void)?) {
        UIView.performTransitionWithCompletion(animated: animated, action: {
            sheetView = nil
            fullScreenCoverView = nil
        }, completion: completion)
    }

    public func popToView<T: View>(withType type: T.Type, animated: Bool, completion: (() -> Void)?) {
        if let index = navigationStack.lastIndex(where: { $0.type == T.self }) {
            UIView.performTransitionWithCompletion(animated: animated, action: {
                navigationStack = Array(navigationStack[...index])
            }, completion: completion)
        } else if rootView?.type == T.self {
            popToRoot(animated: animated, completion: completion)
        }
    }
}
