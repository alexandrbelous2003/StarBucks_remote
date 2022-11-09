//
//  ContentView.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct ContentView: View {
//    @Environment(\.presentationMode) var presentationMode
    @State private var showMenu =  false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
            Group {
                // не авторизация пользователя
            if viewModel.userSession == nil {
                    LoginView()
            }else {
                mainInterfaceView
//                LoginView()
//                ContentView()
//                MainTabView()
            }
        }
    }
}
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView()
        }
    }
    
    
extension ContentView {
        
        var mainInterfaceView: some View {
            VStack(alignment: .center, spacing: 0) {
                
                //Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 140)
                    .padding(.vertical,
                             UIScreen.main.bounds.size
                        .height / 8)
                
                VStack(alignment: .leading, spacing: 10) {
                    // sign up with social title
                    SignUpTitleView(title: "Get started with")
                        .padding(.vertical)
                    
                    //Signup with socials
                    SignupItemsGroupView()
                    
                    
                    Spacer().frame(height: 30)
                    
                    //SignUp with email title
                    SignUpTitleView(title: "Or sign up with")
                    
                    //Signup with email
                    
                    
                    
                    
                    //                        Button {
                    //                            LoginView()
                    //                        } label: {
                    //                            SignupLongItemView(objectText: "Email", backgroundColor: "loginButtonBackground")
                    //                        }
                    //
                    NavigationLink(destination: RegistrationView(), label: {
                        SignupLongItemView(objectText: "Email", backgroundColor: "starbucksColor")
                    })
                    
                    
                    //switch to login portion
                    Spacer()
                    
                    //                        NavigationLink(destination: LoginView(), label: {
                    //                            SwitchToLoginView()
                    //                                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                    //                        })
                    
                    
                    SwitchToLoginView()
                        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                }
                
                .frame(width: 325)
                
            }//: VSTACK
            
        }
    }
