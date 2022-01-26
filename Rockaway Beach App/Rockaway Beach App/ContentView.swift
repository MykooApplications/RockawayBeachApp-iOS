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
                    Image(systemName: "1.square.fill")
                    Text("Home")
                }
            
            FoodView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Food")
                }
            
            ShopView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Shop")
                }
        }
        .font(.headline)
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }.navigationTitle("Rockaway Home")
        }
    }
}

struct FoodView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }.navigationTitle("Local Food")
        }
    }
}

struct ShopView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
            }.navigationTitle("Neighborhood Shops")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
