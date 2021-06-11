//
//  ShowHideKeyboardExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ShowHideKeyboardExampleView: View {
    
    @State private var name = ""
    @FocusState private var isNameTextFieldFocused: Bool
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .focused($isNameTextFieldFocused)
            Button("Dismiss keyboard", role: .destructive) {
                isNameTextFieldFocused = false
            }
        }
        .padding()
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.isNameTextFieldFocused = true
            }
            
        })
        .navigationBarTitle("Show Hide Keyboard")
    }
}

@available(iOS 15.0, *)
struct ShowHideKeyboardExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideKeyboardExampleView()
    }
}
