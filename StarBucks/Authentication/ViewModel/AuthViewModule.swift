//
//  AuthViewModule.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject  {
    @Published var userSession: Firebase.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String ) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in wirh error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user

//            NavigationLink("d") {
//                MainTabView()
////                    .navigationBarHidden(true)
//            }
            print("DEBUG: Registered user successfully")
            //            print("DEBUG: User is \(self.userSession)")
            //        print("DEBUG: Login with email \(email)")
        }
    }   
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            print("DEBUG: Registered user successfully")
            print("DEBUG: User is \(self.userSession)")
            
            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname": fullname,
                        "uid": user.uid]
            
//            Firestore.firestore().collection("users")
//                .document(user.uid)
//                .setData(data) { _ in
//                    print("DEBUG: Did upload user data..")
//                }
        }
    }
}
