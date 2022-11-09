//
//  CartManager.swift
//  StarBucks
//
//  Created by Александр Белоус on 09.11.2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Coffe] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Coffe) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Coffe) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
