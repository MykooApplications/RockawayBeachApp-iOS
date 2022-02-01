//
//  ContentView.swift
//  Rockaway Beach App
//
//  Created by Roshan Mykoo on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Home")
                }
            
            FoodView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Food")
                }
            
            ShopView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Shop")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
        }
        .font(.headline)
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
