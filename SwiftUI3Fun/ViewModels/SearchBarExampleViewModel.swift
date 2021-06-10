//
//  SearchBarExampleViewModel.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

class SearchBarExampleViewModel: ObservableObject {
    
    // MARK: - Properties
    var initialNames = ["Alice", "Bob", "Carl", "Doe", "Ellen", "Frank"]
    
    // MARK: - Published
    @Published var names: [String] = []
    
    func filter(_ searchText: String) {
        if searchText == "" {
            names = initialNames
            return
        }
        names = initialNames.filter({ name in
            name.lowercased().contains(searchText.lowercased())
        })
    }
    
}
