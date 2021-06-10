//
//  AsyncImageExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct AsyncImageExampleView: View {
    
    let url = URL(string: "https://unsplash.com/photos/9XngoIpxcEo/download?force=true&w=640")
    
    var body: some View {
        VStack {
            
        }
        .navigationBarTitle("Async Image")
    }
}

@available(iOS 15.0, *)
struct AsyncImageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageExampleView()
    }
}
