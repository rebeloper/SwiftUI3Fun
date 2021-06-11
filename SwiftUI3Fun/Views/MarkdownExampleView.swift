//
//  MarkdownExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct MarkdownExampleView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, **bold**")
            Text("Hello, ***italic bold***")
            Text("Hello, *italic*")
            Text("Hello, ~strikethrough~")
            Text("Hello, [link](https://rebeloper.com/mentoring)")
        }
        .font(.largeTitle)
        .navigationBarTitle("Markdown")
    }
}

@available(iOS 15.0, *)
struct MarkdownExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MarkdownExampleView()
    }
}
