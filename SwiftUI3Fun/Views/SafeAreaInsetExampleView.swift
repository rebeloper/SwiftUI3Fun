//
//  SafeAreaInsetExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct SafeAreaInsetExampleView: View {
    var body: some View {
        ScrollView {
            ForEach(0...49, id:\.self) { i in
                HStack {
                    Text("Number: \(i)").foregroundColor(.white)
                    Spacer()
                }
                .padding()
            }
            .padding()
        }
        .background(Color.mint)
        .safeAreaInset(edge: .top, alignment: .center, spacing: nil, content: {
            HStack {
                Label("www.rebelopr.com/mentoring", systemImage: "globe")
                    .padding()
                Spacer()
            }
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 21, style: .continuous))
            .padding()
        })
        .navigationBarTitle("Safe Area Inset")
    }
}

@available(iOS 15.0, *)
struct SafeAreaInsetExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetExampleView()
    }
}
