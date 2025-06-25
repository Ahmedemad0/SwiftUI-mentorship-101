//
//  PasswrodTextField.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 20/06/2025.
//

import Domain
import SwiftUI

public struct PasswrodTextField: View {
    @Environment(\.icons) private var icons
    @Binding var password: Password
    @State private var error: String?
    @State private var secured: Bool = true

    public init(password: Binding<Password>) {
        _password = password
    }

    public var body: some View {
        PrimaryTextField(
            text: $password.value,
            placeHolder: "Password",
            isSecured: secured,
            leading: {
                icons.lock
            },
            trailing: {
                Button {
                    secured.toggle()
                } label: {
                    secured ? icons.eye : icons.closeEye
                }
            }
        )
        .environment(\.primaryTextFieldError, error)
        .keyboardType(.emailAddress)
        .textContentType(.emailAddress)
        .onChange(of: password.value) { _, _ in
            do {
                try password.validate()
                withAnimation {
                    error = nil
                }
            } catch {
                withAnimation {
                    self.error = error.localizedDescription
                }
            }
        }
    }
}
