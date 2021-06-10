//
//  HomeViewModel.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    let examples = [
        ExampleItem(title: "List - Pull to refresh", index: 0),
        ExampleItem(title: "List - Seperator", index: 1),
        ExampleItem(title: "List - Swipe actions", index: 2),
        ExampleItem(title: "Search Bar", index: 3),
        ExampleItem(title: "Async Image", index: 4),
        ExampleItem(title: "Material", index: 5),
        ExampleItem(title: ".onSubmit", index: 6),
        ExampleItem(title: "Safe Area Inset", index: 7),
        ExampleItem(title: "Sheet Interactive Dismiss", index: 8),
        ExampleItem(title: "Keyboard Accessory View", index: 9),
        ExampleItem(title: "Show Hide Keyboard", index: 10),
        ExampleItem(title: "@FocusState", index: 11),
        ExampleItem(title: "Binded Collection", index: 12),
        ExampleItem(title: "Foreground Styles", index: 13),
        ExampleItem(title: "SFSymbols", index: 14),
        ExampleItem(title: "Markdown", index: 15),
        ExampleItem(title: "Date Formatter", index: 16),
        ExampleItem(title: "Button", index: 17),
        ExampleItem(title: "Control Group", index: 18),
        ExampleItem(title: "Alert", index: 19),
        ExampleItem(title: "Confirmation Dialog", index: 20)
    ]
    
}
