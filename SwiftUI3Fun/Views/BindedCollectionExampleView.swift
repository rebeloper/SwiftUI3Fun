//
//  BindedCollectionExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

struct BindedCollectionExampleView: View {
    
    @State private var profiles = [
        Profile(name: "Alex"),
        Profile(name: "Bob"),
        Profile(name: "Claire")
    ]
    
    var body: some View {
        VStack {
            ForEach(profiles) { profile in
                HStack {
                    Text(profile.name)
                    Spacer()
                }
            }.padding(.horizontal)
            
        }
        .navigationBarTitle("Binded Collection")
    }
}

struct BindedCollectionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BindedCollectionExampleView()
    }
}
