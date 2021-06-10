//
//  ButtonExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ButtonExampleView: View {
    
    @State private var isToggleOn = false
    
    var body: some View {
        ScrollView {
            
            Button {
                print("Next")
            } label: {
                Text("Next")
            }
            
            Button {
                print("Shop")
            } label: {
                Text("Shop")
            }
            
            Button {
                print("Add")
            } label: {
                Text("ADD")
            }
            
            Button {
                print("Delete")
            } label: {
                Text("Delete")
            }
            
            Button {
                print("visit site")
            } label: {
                Text("Visit site")
            }
            
            Toggle(isOn: $isToggleOn) {
                Image(systemName: "flag")
                    .symbolVariant(.fill)
                    .font(.largeTitle)
            }
        }
        .navigationBarTitle("Button")
    }
}

@available(iOS 15.0, *)
struct ButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExampleView()
    }
}
