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
                .symbolRenderingMode(.multicolor)
            Image(systemName: "cloud.sun.rain.fill")
                .symbolRenderingMode(.monochrome)
                .foregroundColor(.mint)
            Image(systemName: "cloud.sun.rain.fill")
                .symbolRenderingMode(.hierarchical)
            Image(systemName: "cloud.sun.rain.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.indigo, .mint, .brown)
            Image(systemName: "cloud.sun.rain")
                .symbolVariant(.fill)
                .foregroundColor(.orange)
            HStack {
                
                Image(systemName: "bolt")
                
                Image(systemName: "bolt")
                    .symbolVariant(.fill)
                Image(systemName: "bolt")
                    .symbolVariant(.circle)
                Image(systemName: "bolt")
                    .symbolVariant(.square)
                Image(systemName: "bolt")
                    .symbolVariant(.slash)
                Image(systemName: "checkmark")
                    .symbolVariant(.rectangle)
            }
            .font(.system(size: 42))
            .foregroundColor(.mint)
        }
        .background(Color.gray.opacity(0.2))
        .symbolRenderingMode(.hierarchical)
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
