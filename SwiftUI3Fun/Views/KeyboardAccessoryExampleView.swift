//
//  KeyboardAccessoryExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct KeyboardAccessoryExampleView: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
        .toolbar(content: {
            ToolbarItem(placement: .keyboard) {
                Text("Hello Keyboard Accessory View")
            }
        })
        .navigationBarTitle("Keyboard Accessory View")
    }
}

@available(iOS 15.0, *)
struct KeyboardAccessoryExampleView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardAccessoryExampleView()
    }
}
