
import SwiftUI

public struct OffsetPreferenceKey: PreferenceKey {
    public static var defaultValue: CGRect = .zero

    public static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

public extension View {
    func onOffsetChanged(id coordinateSpace: String, completion: @escaping (CGRect) -> Void) -> some View {
        overlay {
            GeometryReader { geometry in
                let rect = geometry.frame(in: .named(coordinateSpace))

                Color.clear
                    .preference(key: OffsetPreferenceKey.self, value: rect)
                    .onPreferenceChange(OffsetPreferenceKey.self, perform: completion)
            }
        }
    }
}
