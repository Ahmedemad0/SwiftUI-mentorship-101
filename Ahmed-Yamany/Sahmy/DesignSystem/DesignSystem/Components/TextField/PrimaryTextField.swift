
import SwiftUI

public extension EnvironmentValues {
    @Entry
    var primaryTextFieldError: String? = nil
}

public struct PrimaryTextField<Leading: View, Trailing: View>: View {
    @Binding var text: String

    let placeHolder: String
    let isSecured: Bool

    @ViewBuilder var leading: Leading
    @ViewBuilder var trailing: Trailing
    @Environment(\.colors) private var colors
    @Environment(\.primaryTextFieldError) private var error: String?

    public init(
        text: Binding<String>,
        placeHolder: String,
        isSecured: Bool = false,
        @ViewBuilder leading: () -> Leading = { EmptyView() },
        @ViewBuilder trailing: () -> Trailing = { EmptyView() }
    ) {
        _text = text
        self.placeHolder = placeHolder
        self.isSecured = isSecured
        self.leading = leading()
        self.trailing = trailing()
    }

    public var body: some View {
        VStack(alignment: .leading) {
            HStack {
                leading
                textField
                trailing
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .primaryTextFieldStyle()

            if let error {
                Text(error)
                    .foregroundStyle(.red)
                    .setFont(.caption2, weight: .medium)
            }
        }
    }

    private var textField: some View {
        Group {
            if isSecured {
                SecureField("", text: $text, prompt: prompet)
            } else {
                TextField("", text: $text, prompt: prompet)
            }
        }
        .setFont(.caption2, weight: .regular)
    }

    private var prompet: Text {
        if #available(iOS 17.0, *) {
            Text(placeHolder)
                .foregroundStyle(colors.primaryText)
        } else {
            Text(placeHolder)
        }
    }
}

struct PrimaryTextFieldStyleModifier: ViewModifier {
    @Environment(\.colors) private var colors
    @Environment(\.primaryTextFieldError) private var error: String?

    func body(content: Content) -> some View {
        content
            .frame(height: 54)
            .foregroundStyle(colors.primaryText)
            .background(colors.primaryTextFieldBackground)
            .clipShape(.rect(cornerRadius: 12))
            .background(
                error != nil ? .red : .clear,
                in: .rect(cornerRadius: 12).stroke(lineWidth: 1.5)
            )
    }
}

extension View {
    func primaryTextFieldStyle() -> some View {
        modifier(PrimaryTextFieldStyleModifier())
    }
}

#Preview {
    PrimaryTextField(
        text: .constant(""),
        placeHolder: "Email",
        isSecured: true
    )
    .padding()
    .sahmyScreenDesign()
}
