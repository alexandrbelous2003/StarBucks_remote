//
//  SwitchToLoginView.swift
//  appCoffe
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct SwitchToLoginView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 3) {
            Text("Already onboard?")
                .font(.body)
            
            Button {
                
            } label: {
                NavigationLink(destination: LoginView(), label: {
                    Text("Login")
                        .font(.body)
                        .foregroundColor(Color("hyperLink"))
                })
                
            }
        }
    }
}

struct SwitchToLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchToLoginView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
