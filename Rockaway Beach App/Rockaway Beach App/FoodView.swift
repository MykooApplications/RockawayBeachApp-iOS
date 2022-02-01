//
//  FoodView.swift
//  Rockaway Beach App
//
//  Created by Roshan Mykoo on 1/31/22.
//

import SwiftUI

struct FoodView: View {
    @State private var shopingOn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                HStack {
                    Image(systemName: "fork.knife")
                    Toggle(isOn: $shopingOn) {
                           
                    }
                    Image(systemName: "bag")
                }
                
            }.navigationTitle("Local Food")
        }
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
