

import SwiftUI

public struct OnDidLoadModifier: ViewModifier {
    @State private var isLoaded = false

    let perform: () -> Void

    init(perform: @escaping () -> Void) {
        self.perform = perform
    }

    public func body(content: Content) -> some View {
        content
            .onAppear {
                if !self.isLoaded {
                    perform()
                    self.isLoaded = true
                }
            }
    }
}


public extension View {
    func onDidLoad(_ perform: @escaping () -> Void) -> some View {
        modifier(OnDidLoadModifier(perform: perform))
    }
}
