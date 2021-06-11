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
//        .searchable("Search", text: $searchText)
        .searchable("Search", text: $searchText, placement: .automatic, suggestions: {
            ForEach(viewModel.names.filter({ name in
                searchText == "" ? true : name.lowercased().contains(searchText.lowercased())
            }), id:\.self) { name in
                Text(name)
                    .searchCompletion(name)
            }
        })
        .onChange(of: searchText, perform: { newValue in
            viewModel.filter(newValue)
        })
        .navigationBarTitle("Search Bar")
        .onAppear {
            viewModel.names = viewModel.initialNames
        }
    }
}

@available(iOS 15.0, *)
struct SearchBarExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarExampleView()
    }
}
