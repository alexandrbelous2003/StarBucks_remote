//
//  MainTabView.swift
//  StarBucks
//
//  Created by Александр Белоус on 09.11.2022.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            CoffeMenuView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "cup.and.saucer")
                }.tag(0)
            
            AllMenuView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "menucard")
                }.tag(1)
            
            
//                .toolbar {
//                    NavigationLink {
//                        CartView()
//                            .environmentObject(cartManager)
//                    } label: {
//                        CartButton(numberOfProducts: cartManager.products.count)
//                    }
//                }
            
//            CartView()
//                .environmentObject(CartManager())
//                .onTapGesture {
//                    self.selectedIndex = 2
//                }
//                .tabItem{
//                    Image(systemName: "cart")
//                }.tag(2)
            
            FavoritesCoffeView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "heart")
                }.tag(2)
            
            SettingsMenuView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "gear")
                }.tag(3)
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
