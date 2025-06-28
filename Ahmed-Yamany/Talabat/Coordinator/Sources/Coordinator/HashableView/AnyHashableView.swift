//
//  AnyRoutableView.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 14/10/2024.
//

import SwiftUI

/// A type-erased SwiftUI `View` that conforms to `Hashable` and `Identifiable`.
/// This is useful for storing heterogeneous views in collections that require `Hashable` or `Identifiable` conformance,
/// such as lists or navigation stacks with path-based navigation.
public struct AnyHashableView: View, Hashable, Identifiable {
    /// A unique identifier for the view.
    public var id: UUID = UUID()

    /// The underlying type-erased view.
    private let _view: AnyView

    /// The type of the wrapped view, used for inspection or comparison.
    public var type: Any.Type

    /// Initializes a new `AnyHashableView` by wrapping the given SwiftUI view.
    /// - Parameter view: The view to be type-erased and wrapped.
    public init<T: View>(_ view: T) {
        _view = AnyView(view)
        type = T.self
    }

    /// Hashes the essential components of the view (based on `id`).
    /// - Parameter hasher: The hasher to use when combining the components.
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    /// Compares two `AnyHashableView` instances for equality using their hash values.
    /// - Parameters:
    ///   - lhs: The left-hand side view.
    ///   - rhs: The right-hand side view.
    /// - Returns: A Boolean value indicating whether the two views are equal.
    public static func == (lhs: AnyHashableView, rhs: AnyHashableView) -> Bool {
        lhs.hashValue == rhs.hashValue
    }

    /// The view content to display.
    public var body: some View {
        _view
    }
}

extension AnyHashableView {
    /// Initializes a new `AnyHashableView` with a custom type.
    /// - Parameters:
    ///   - view: The view to wrap.
    ///   - type: The type to associate with the view.
    public init<T: View>(_ view: T, type: Any.Type) {
        _view = AnyView(view)
        self.type = type
    }
}

extension AnyHashableView {
    /// Initializes a new `AnyHashableView` and applies a modifier closure to it.
    ///
    /// This allows you to apply custom view modifiers to the type-erased view while preserving hashability.
    /// - Parameters:
    ///   - view: The view to wrap.
    ///   - modifier: A closure that takes the resulting `AnyHashableView` and returns a modified view.
    public init<T: View>(_ view: T, modifier: (Self) -> some View) {
        type = T.self
        _view = AnyView(modifier(AnyHashableView(view)))
    }
}
