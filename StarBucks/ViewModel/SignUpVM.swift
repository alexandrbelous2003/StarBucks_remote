//
//  LoginVM.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

class LoginPage: ObservableObject {
    
    @Published var isLogin: Bool = false
    
    func signUpWithGoogle() {
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        
        //SignIn
        
//        GIDSignIn.sharedInstance.signIn(with: config, presenting: ApplicationUtility.rootViewController) {
//            [self] user, error in
//
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//
//            guard
//              let authentication = user?.authentication,
//              let idToken = authentication.idToken
//            else {
//              return
//            }
//
//            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
//                                                           accessToken: authentication.accessToken)
//
//            Auth.auth().signIn(with: credential) {
//                result, error in
//
//                if let err = error {
//                    print(err.localizedDescription)
//                    return
//                }
//
//                guard let user = result?.user else { return }
//                print(user.displayName)
//                isLogin.toggle()
//            }
            
            
                  
        }
    }
//
//}
