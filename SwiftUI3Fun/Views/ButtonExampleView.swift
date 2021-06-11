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
            .buttonStyle(.bordered)
            .controlProminence(.standard)
            
            Button(role: .cancel) {
                print("Add")
            } label: {
                Text("ADD")
            }
            .buttonStyle(.bordered)
            .controlProminence(.increased)
            
            Button(role: .destructive) {
                print("Delete")
            } label: {
                Text("Delete")
            }
            .buttonStyle(.bordered)
            .controlProminence(.increased)
            
            Button(role: .destructive) {
                print("visit site")
            } label: {
                Text("Visit site")
            }
            .buttonStyle(.bordered)
            .controlProminence(.increased)
            .controlSize(.large)
            .tint(.mint)
            
            Toggle(isOn: $isToggleOn) {
                Image(systemName: "flag")
                    .symbolVariant(.fill)
                    .font(.largeTitle)
            }
            .toggleStyle(.button)
            .tint(.red)
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
