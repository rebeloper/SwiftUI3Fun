//
//  FocusStateExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct FocusStateExampleView: View {
    
    enum Field {
        case name, email, password
    }
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    @FocusState var focusedField: Field?
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .focused($focusedField, equals: .name)
                .textContentType(.name)
                .submitLabel(.next)
            
            TextField("Email", text: $email)
                .focused($focusedField, equals: .email)
                .textContentType(.emailAddress)
                .submitLabel(.next)
            
            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)
                .textContentType(.password)
                .submitLabel(.join)
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.focusedField = .name
            }
        })
        .onSubmit {
            switch focusedField {
            case .name:
                focusedField = .email
            case .email:
                focusedField = .password
            case .password:
                focusedField = nil
                print("Joining...")
            default:
                print("Default")
            }
        }
        .navigationBarTitle("@FocusState")
    }
}

@available(iOS 15.0, *)
struct FocusStateExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateExampleView()
    }
}
