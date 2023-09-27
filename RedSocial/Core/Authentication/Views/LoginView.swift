//
//  LoginView.swift
//  RedSocial
//
//  Created by Daniel Boza García on 27/9/23.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        //Parent Container
        VStack {
            //header view
            AuthHeaderView(title1: "Hello", title2: "Welcome Back.")

            VStack(spacing: 40) {
                
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)

                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)

            HStack {
                Spacer()

                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }

            Button {
                print("Sign in here")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()

            NavigationLink{
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)

                    Text("Don't have an account?")
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
