//
//  ListSeparatorExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ListSeparatorExampleView: View {
    var body: some View {
        List {
            ForEach(0...29, id:\.self) { i in
                Text("Number: \(i)")
//                    .listRowSeparator(.hidden)
                    .badge("Badge")
                    .listRowSeparatorTint(.red)
            }
        }
        .navigationBarTitle("List Separator")
    }
}

@available(iOS 15.0, *)
struct ListSeperatorExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSeparatorExampleView()
    }
}
