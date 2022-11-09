//
//  ProductCard.swift
//  StarBucks
//
//  Created by Александр Белоус on 09.11.2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Coffe
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.white))
                                        
                
                    
                    Text("\(product.price)р")
                        .font(.caption)
                        .foregroundColor(Color(.white))
                }
                .padding()
                .frame(width: 180, alignment: .leading)
    //            .background(Color("starbucksColor").blur(radius: 4))
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            
            Button {
                cartManager.addToCart(product: product)
                print("Added to cart!")
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
