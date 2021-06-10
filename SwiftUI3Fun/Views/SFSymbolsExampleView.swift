//
//  SFSymbolsExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct SFSymbolsExampleView: View {
    var body: some View {
        
        ScrollView {
            Divider()
            
            Image(systemName: "cloud.sun.rain.fill")
            
            Image(systemName: "cloud.sun.rain.fill")
            
            Image(systemName: "cloud.sun.rain.fill")
            
            Image(systemName: "cloud.sun.rain.fill")
            
            Image(systemName: "cloud.sun.rain")
            
            HStack {
                
                Image(systemName: "bolt")
                
                Image(systemName: "bolt")
                
                Image(systemName: "bolt")
                
                Image(systemName: "bolt")
                
                Image(systemName: "bolt")
                
                Image(systemName: "checkmark")
            }
            .font(.system(size: 42))
            .foregroundColor(.mint)
        }
        .background(Color.gray.opacity(0.2))
        .font(.system(size: 64))
        .navigationBarTitle("SFSymbols")
    }
}

@available(iOS 15.0, *)
struct SFSymbolsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsExampleView()
    }
}
