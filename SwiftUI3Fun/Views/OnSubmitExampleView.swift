//
//  OnSubmitExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct OnSubmitExampleView: View {
    
    @State private var searchText = ""
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        .searchable("Name", text: $searchText)
        .onSubmit(of: .search, {
            print("Search: \(searchText)")
        })
//        .onSubmit {
//            print("Name: \(name)")
//        }
        .navigationBarTitle(".onSubmit")
    }
}

@available(iOS 15.0, *)
struct OnSubmitExampleView_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitExampleView()
    }
}
