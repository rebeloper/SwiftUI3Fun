//
//  FocusStateExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct FocusStateExampleView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
            
            TextField("Email", text: $email)
            
            SecureField("Password", text: $password)
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .navigationBarTitle("@FocusState")
    }
}

@available(iOS 15.0, *)
struct FocusStateExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateExampleView()
    }
}
