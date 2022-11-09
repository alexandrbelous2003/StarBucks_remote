//
//  Coffe.swift
//  StarBucks
//
//  Created by Александр Белоус on 09.11.2022.
//

import Foundation

struct Coffe {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Coffe(name: "Vanilla latte", image: "coffe1", price: 240),
                   Coffe(name: "Chocolate frappuccinos", image: "coffe2", price: 310),
                   Coffe(name: "Pumpkin chocolate latte", image: "coffe3", price: 220),
                   Coffe(name: "Raspberry latte", image: "coffe4", price: 200),
                   Coffe(name: "Green tea latte", image: "coffe5", price: 230),
                   Coffe(name: "Coffe cake frappuccinos", image: "coffe6", price: 210),
                   Coffe(name: "Caramel frappuccinos", image: "coffe7", price: 280),
                   Coffe(name: "Chocolate frappuccinos", image: "coffe8", price: 340)]
