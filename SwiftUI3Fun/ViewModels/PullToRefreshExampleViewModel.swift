//
//  PullToRefreshExampleViewModel.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

class PullToRefreshExampleViewModel: ObservableObject {
    
    @Published var names: [String] = []
    
    func refresh() async {
        names = ["Alice", "Bob"]
    }
    
}
