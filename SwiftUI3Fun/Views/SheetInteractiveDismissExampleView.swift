//
//  SheetInteractiveDismissExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct SheetInteractiveDismissExampleView: View {
    
    @State private var isSheetActive = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                isSheetActive.toggle()
            }
            .sheet(isPresented: $isSheetActive, onDismiss: nil) {
                DismissableSheetView()
            }
        }
        .navigationBarTitle("Sheet Interactive Dismiss")
    }
}

@available(iOS 15.0, *)
struct SheetInteractiveDismissExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SheetInteractiveDismissExampleView()
    }
}

struct DismissableSheetView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        Button("Dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
