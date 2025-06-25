//
//  LoginScreen.swift
//  Sahmy
//
//  Created by Ahmed Yamany on 19/06/2025.
//

import DesignSystem
import SwiftUI

struct LoginScreen<ViewModel: LoginViewModel>: View {
    @StateObject private var viewModel: ViewModel
    @Environment(\.colors) private var colors

    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ScrollView {
            VStack {
                WelcomeView(viewModel: viewModel)

                forgotPasswordButton
                
                EmailTextField(email: $viewModel.email)
                PasswrodTextField(password: $viewModel.password)
                Spacer(minLength: 100)
                loginButton
            }
            .sahmyScreenPadding()
        }
        .sahmyScreenDesign()
    }

    private var forgotPasswordButton: some View {
        Button {
            viewModel.didTapForgotPassword()
        } label: {
            Text("Forgot Password?")
        }
        .buttonStyle(.plain())
        .frame(maxWidth: .infinity, alignment: .trailing)
    }

    private var loginButton: some View {
        Button {
            viewModel.didTapLogin()
        } label: {
            Text("Login")
        }
        .buttonStyle(.primary())
    }
}

private struct WelcomeView<ViewModel: LoginViewModel>: View {
    @ObservedObject private var viewModel: ViewModel
    @Environment(\.colors) private var colors

    init(viewModel: ViewModel) {
        _viewModel = ObservedObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Welcome To Sahmy")
                .setFont(.title2)

            HStack {
                Text("dont have account?")
                    .setFont(.caption2)
                    .foregroundStyle(colors.secondaryText)

                Button {
                    viewModel.didTapSignup()
                } label: {
                    Text("Sign up")
                }
                .buttonStyle(.plain())
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    LoginScreen(viewModel: LoginViewModelImpl())
}
