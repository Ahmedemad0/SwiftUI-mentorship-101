//
//  SahmyApp.swift
//  Sahmy
//
//  Created by Ahmed Yamany on 19/06/2025.
//

import SwiftUI

@main
struct SahmyApp: App {
    var body: some Scene {
        WindowGroup {
            LoginScreen(viewModel: LoginViewModelImpl())
        }
    }
}
