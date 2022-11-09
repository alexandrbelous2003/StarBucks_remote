//
//  LoginView.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        // родительский контейнер
        VStack {
            // тело
            AuthHeaderView(title1: "Hello.", title2: "Welcome back.")
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("Reset password view..")
                } label: {
                    Text("Forgot password?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color("starbucksColor"))
                        .padding(.top)
                        .padding(.trailing, 24)
                }

            }
            
            Button {
                viewModel.login(withEmail: email, password: password)
            } label:  {
                NavigationLink(destination: MainTabView()) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color("starbucksColor"))
                        .clipShape(Capsule())
                        .padding()
                        .navigationBarHidden(true)
                }
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                        .foregroundColor(Color("starbucksColor"))
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("starbucksColor"))
                        .bold()
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
