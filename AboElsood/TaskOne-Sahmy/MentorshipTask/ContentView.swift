//
//  ContentView.swift
//  MentorshipTask
//
//  Created by 2B on 15/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Welcome To Sahmy")
                    .font(.title.bold())
                    .foregroundStyle(.black)
                HStack{
                    Text("Don't have account?")
                        .font(.callout)
                        .foregroundStyle(.black)
                    
                    Text("Sign up")
                        .font(.callout)
                        .foregroundStyle(.purple)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            TitledTextField(
                text: $email,
                title: "Email",
                image: "lock.fill",
                isPassword: false,
                placeHolder: "Enter Email",
                errorMessage: "Enter valid email"
            )
            
            TitledTextField(
                text: $password,
                title: "Password",
                image: "envelope.fill",
                isPassword: true,
                placeHolder: "Enter Password",
                errorMessage: "Password should be atleast 8 characters, @, #, $"
            )
            Text("Forget Password?")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.headline)
                .foregroundStyle(.purple)
                .padding(.trailing)
            Spacer()
            Button {
                print(email,password)
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purple)
                        .frame(height: 50)
                    Text("Login").foregroundStyle(.white).font(.headline)
                }
            }
            
        }
        .padding()
    }
}

struct TitledTextField: View {
    
    @Binding var text: String
    var title : String = ""
    var image: String = ""
    var isPassword: Bool = false
    var placeHolder: String = "Enter your email"
    var errorMessage: String = "Enter your email"
    @State private var hasEdited: Bool = false
    @State private var isSecured: Bool = true
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack{
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
                .padding(.leading)
            HStack {
                textFieldImage
                textFieldType
                textFieldSecureButton
            }
            .padding()
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke( isFocused ? Color.purple : Color.gray.opacity(0.5), lineWidth: 1)
            )
            HStack{
                Text(errorMessage)
                    .foregroundStyle(Color.red)
                    .padding(.leading)
                    .isHidden(!hasEdited || (isPassword ? isValidPassword(text) : isValidEmail(text)), remove: true)
                Spacer()
            }
        }
    }
    
    private var textFieldImage: some View {
        Group{
            if !image.isEmpty {
                Image(systemName: image)
                    .foregroundColor(isFocused ? .purple : .gray)
            }
        }
    }

    private var textFieldType: some View {
        Group {
            if isPassword && isSecured {
                SecureField(placeHolder, text: $text)
                    .focused($isFocused)
                    .onChange(of: text) { _ in
                    hasEdited = true
                }
            } else {
                TextField(placeHolder, text: $text)
                    .focused($isFocused)
                    .onChange(of: text) { _ in
                    hasEdited = true
                }
            }
        }
        .autocapitalization(.none)
        .disableAutocorrection(true)
    }
    
    private var textFieldSecureButton: some View {
        Group{
            if isPassword {
                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: isSecured ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
        }
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        // Minimum 8 characters, at least one letter and one number
        let pattern = #"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!@#$%^&*()_+=\-]{8,}$"#
        return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: password)
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let pattern =
        #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: email)
    }

}

extension View {
    @ViewBuilder
    func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}

#Preview {
    ContentView()
}
