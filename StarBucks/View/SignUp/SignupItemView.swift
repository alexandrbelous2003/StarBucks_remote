//
//  SignupItemView.swift
//  appCoffe
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct SignupItemView: View {
    let backgroundColor: String
    let image: String
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 25, alignment: .center)
        }
        .frame(width: 85, height: 60, alignment: .center)
        .background(
            Color(backgroundColor)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 1)
        )
    }
}

struct SignupItemView_Previews: PreviewProvider {
    static var previews: some View {
        SignupItemView(backgroundColor: "facebookColor", image: "facebook")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
