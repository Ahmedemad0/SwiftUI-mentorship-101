//
//  EmailTextField.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 12/04/2025.
//

import Domain
import SwiftUI

public struct EmailTextField: View {
    @Environment(\.icons) private var icons
    @Binding var email: Email
    @State private var error: String?

    public init(email: Binding<Email>) {
        _email = email
    }

    public var body: some View {
        PrimaryTextField(
            text: $email.value,
            placeHolder: "Email",
            leading: {
                icons.email
            }
        )
        .environment(\.primaryTextFieldError, error)
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .onChange(of: email.value) { _, _ in
            do {
                try email.validate()
                withAnimation {
                    error = nil
                }
            } catch {
                withAnimation {
                    self.error = error.localizedDescription
                }
            }
        }
        .overlay(.red, in: .rect.stroke(lineWidth: 5))
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var text: Email = ""

    EmailTextField(email: $text)
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
}


