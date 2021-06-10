//
//  ContentView.swift
//  SwiftUI3Fun
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(1)
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
