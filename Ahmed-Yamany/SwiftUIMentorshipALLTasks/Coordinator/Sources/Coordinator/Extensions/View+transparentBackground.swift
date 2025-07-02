//
//  ContentView.swift
//  Coordinator
//
//  Created by Ahmed Yamany on 28/03/2025.
//


import SwiftUI

/// A `UIViewRepresentable` that clears the background color of the parent view's superview.
///
/// This is particularly useful when presenting a `fullScreenCover` in SwiftUI, as `fullScreenCover`
/// by default adds a background color (usually white or the system background). Using this view
/// as a background allows you to make the background **completely transparent**, which is helpful
/// for custom-designed overlays, modals, or floating panels.
///
/// - Important: This technique relies on accessing the underlying UIKit view hierarchy, which is
/// not officially documented behavior but is commonly used in SwiftUI workarounds.
///
/// - Warning: May break in future versions of SwiftUI if Apple changes the internal view structure
/// of `fullScreenCover`.
///
/// ## Example Usage
/// ```swift
/// struct ContentView: View {
///     var body: some View {
///         Text("Hello, World!")
///             .transparentBackground()
///     }
/// }
/// ```
///
/// When used inside a `fullScreenCover`, this makes the cover background transparent, allowing
/// the presenting view (or a custom backdrop) to remain visible.
///
private struct TransparentBackgroundView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

internal extension View {
    /// Applies a transparent background to the view.
    ///
    /// This modifier is especially useful when used within a `fullScreenCover` to remove
    /// the default background color applied by SwiftUI, allowing for a custom transparent overlay.
    ///
    /// - Returns: A modified view with a transparent background.
    ///
    /// ## Example Usage
    /// ```swift
    /// fullScreenCover(isPresented: $isPresented) {
    ///     CustomView()
    ///         .transparentBackground()
    /// }
    /// ```
    func transparentBackground() -> some View {
        background(TransparentBackgroundView())
    }
}
