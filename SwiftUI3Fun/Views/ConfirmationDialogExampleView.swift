//
//  ConfirmationDialogExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ConfirmationDialogExampleView: View {
    
    @State private var isConfiramtionDialogActive = false
    
    var body: some View {
        VStack {
            Button("Show Confirmation Dialog") {
                isConfiramtionDialogActive.toggle()
            }
        }
        .confirmationDialog("Title", isPresented: $isConfiramtionDialogActive, titleVisibility: .visible, actions: {
            Button("OK", action: {})
        }, message: {
            Text("Hello message")
        })
        .navigationBarTitle("Confirmation Dialog")
    }
}

@available(iOS 15.0, *)
struct ConfirmationDialogExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogExampleView()
    }
}
