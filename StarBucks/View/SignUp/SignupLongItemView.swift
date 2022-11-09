//
//  SignupLongItemView.swift
//  appCoffe
//
//  Created by Александр Белоус on 08.11.2022.
//

import SwiftUI

struct SignupLongItemView: View {
    
    let objectText: String
    let backgroundColor: String
    
    var body: some View {
        ZStack(alignment: .center) {
            Text(objectText)
                .font(.body)
                .foregroundColor(.white)
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(
            Color(backgroundColor)
                .cornerRadius(5)
        )
    }
}

struct SignupLongItemView_Previews: PreviewProvider {
    static var previews: some View {
        SignupLongItemView(objectText: "Email", backgroundColor: "starbucksColor")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
