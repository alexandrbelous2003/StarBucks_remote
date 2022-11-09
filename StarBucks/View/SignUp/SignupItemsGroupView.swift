//
//  SignupItemsGroupView.swift
//  appCoffe
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct SignupItemsGroupView: View {
//    @EnvironmentObject var signupVM: SignUpViewModel
    var body: some View {
        HStack(alignment: .center, spacing: 34) {
            
            //FACEBOOK
            Button {
                
            } label: {
                SignupItemView(backgroundColor: "googleColor", image: "meta")
            }
            //GOOGLE
            Button {
//                signupVM.signUpWithGoogle()
            } label: {
                SignupItemView(backgroundColor: "googleColor", image: "google")
            }
            //TWITTER
            Button {
                
            } label: {
                SignupItemView(backgroundColor: "twitterColor", image: "twitter1")
            }
        }
    }
}

struct SignupItemsGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupItemsGroupView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
