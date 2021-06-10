//
//  MaterialExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct MaterialExampleView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("@korpa")
                    .padding()
                    .cornerRadius(15)
                Spacer()
            }
            Spacer()
        }
        .background(
            Image("jr-korpa-9XngoIpxcEo-unsplash")
                .resizable()
                .scaledToFill()
        )
        .navigationBarTitle("Material")
    }
}

@available(iOS 15.0, *)
struct MaterialExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialExampleView()
    }
}
