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
            
            Button("Show Error Alert") {
                isErrorAlertActive.toggle()
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
