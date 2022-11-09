//
//  RegistrationView.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full name", text: $fullname)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(32)
            
            Button {
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            } label:  {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color("starbucksColor"))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                        .foregroundColor(Color("starbucksColor"))
                    
                    Text("Sign In")
                        .font(.footnote)
                        .foregroundColor(Color("starbucksColor"))
                        .fontWeight(.semibold)
                        .bold()
                }
            }
            .padding(.bottom, 32)

        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
