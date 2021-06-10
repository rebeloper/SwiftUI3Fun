//
//  HomeView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.examples) { example in
                NavigationLink(example.title, destination: ExampleView(item: example))
            }
        }
        .navigationBarTitle("🎉 SwiftUI 3 🎉")
    }
}

@available(iOS 15.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
