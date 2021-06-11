//
//  AlertExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct AlertExampleView: View {
    
    @State private var isAlertActive = false
    @State private var isErrorAlertActive = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                isAlertActive.toggle()
            }
            .alert("Alert", isPresented: $isAlertActive) {
                Button("Maybe", action: {})
                Button("Not now", action: {})
                Button("Leave", role: .destructive, action: {})
            } message: {
                Text("Hello message")
            }
            
            Button("Show Error Alert") {
                isErrorAlertActive.toggle()
            }
            .alert(isPresented: $isErrorAlertActive, error: MyError.someThingWentWrong) {
                Button("OK", role: .cancel, action: {})
            }
        }
        .navigationBarTitle("Alert")
    }
}

@available(iOS 15.0, *)
struct AlertExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}

enum MyError: LocalizedError {
    case someThingWentWrong
}

extension MyError {
    var errorDescription: String? {
        switch self {
        case .someThingWentWrong:
            return "Something went wrong"
        }
    }
}
