//
//  ForegroundStylesExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ForegroundStylesExampleView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Primary")
                
                Text("Secondary")
                
                Text("Tertiary")
                
                Text("Quaternary")
            }
            
            Spacer()
        }
        .font(.largeTitle)
        .navigationBarTitle("Foreground Styles")
    }
}

@available(iOS 15.0, *)
struct ForegroundStylesExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundStylesExampleView()
    }
}
