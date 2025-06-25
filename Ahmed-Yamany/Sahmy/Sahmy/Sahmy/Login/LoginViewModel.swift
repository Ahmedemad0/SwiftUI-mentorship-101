//
//  LoginViewModel.swift
//  Sahmy
//
//  Created by Ahmed Yamany on 19/06/2025.
//

import SwiftUI
import Domain

@MainActor
protocol LoginViewModel: ObservableObject {
    var email: Email { get set }
    var password: Password { get set }
    
    func didTapLogin()
    func didTapSignup()
    func didTapForgotPassword()
}

@Observable
@MainActor
final class LoginViewModelImpl: LoginViewModel {
    var email: Email = ""
    var password: Password = ""
    
    func didTapLogin() {
        
    }
    
    func didTapSignup() {
        
    }
    
    func didTapForgotPassword() {
        
    }
}
