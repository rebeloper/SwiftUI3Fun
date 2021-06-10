//
//  ExampleItem.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

struct ExampleItem: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let index: Int
}
