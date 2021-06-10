//
//  SearchBarExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct SearchBarExampleView: View {
    
    @StateObject private var viewModel = SearchBarExampleViewModel()
    
    @State private var searchText = ""
    
    var body: some View {
        List {
            ForEach(viewModel.names, id:\.self) { name in
                Text(name)
            }
        }
        .navigationBarTitle("Search Bar")
    }
}

@available(iOS 15.0, *)
struct SearchBarExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarExampleView()
    }
}
