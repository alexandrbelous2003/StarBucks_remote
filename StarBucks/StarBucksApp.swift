//
//  StarBucksApp.swift
//  StarBucks
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI
import Firebase
//import GoogleSignIn

@main
struct StarBucksApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    
            }
            .environmentObject(viewModel)
        }
    }
}


//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
//
//        return true
//    }
//
//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//
//        return GIDSignIn.sharedInstance.handle(url)
//    }
//}
