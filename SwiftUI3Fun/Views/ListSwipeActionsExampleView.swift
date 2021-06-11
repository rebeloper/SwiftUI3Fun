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
            .swipeActions(edge: .leading) {
                Button(role: .cancel) {
                    print("pin")
                } label: {
                    Label("Pin", systemImage: "pin")
                }
                .tint(.orange)
                
                Button(role: .none) {
                    print("more")
                } label: {
                    Label("More", systemImage: "ellipsis")
                }
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button(role: .destructive) {
                    print("delete")
                } label: {
                    Label("Delete", systemImage: "trash")
                }
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
