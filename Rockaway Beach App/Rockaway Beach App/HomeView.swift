//
//  HomeView.swift
//  Rockaway Beach App
//
//  Created by Roshan Mykoo on 1/31/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    @State private var showNavigationTitle: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")

                        TextField("search", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        }).foregroundColor(.primary)

                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                                    .foregroundColor(.secondary)
                                    .background(Color(.secondarySystemBackground))
                                    .cornerRadius(10.0)

                                    if showCancelButton  {
                                        Button("Cancel") {
                                                UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                                                self.searchText = ""
                                                self.showCancelButton = false
                                        }
                                        .foregroundColor(Color(.systemBlue))
                                    }
                                }
                                .padding(.horizontal)
                                .navigationBarHidden(showCancelButton)
            }.navigationTitle("Rockaway Home").navigationBarHidden(showNavigationTitle)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}
