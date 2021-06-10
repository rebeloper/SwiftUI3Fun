//
//  ListSwipeActionsExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ListSwipeActionsExampleView: View {
    var body: some View {
        List {
            ForEach(0...29, id:\.self) { i in
                Text("Number: \(i)")
            }
        }
        .navigationBarTitle("List Swipe Actions")
    }
}

@available(iOS 15.0, *)
struct ListSwipeActionsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsExampleView()
    }
}
