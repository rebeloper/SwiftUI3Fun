//
//  ControlGroupExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ControlGroupExampleView: View {
    var body: some View {
        VStack {
            Text("Hello, Control Group!")
        }
        .navigationBarTitle("Control Group")
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                ControlGroup {
                    Button(role: .destructive) {
                        
                    } label: {
                        Image(systemName: "trash")
                    }

                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
                .controlGroupStyle(.navigation)
            }
            
        })
    }
}

@available(iOS 15.0, *)
struct ControlGroupExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupExampleView()
    }
}
