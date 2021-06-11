//
//  DateFormatterExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct DateFormatterExampleView: View {
    var body: some View {
        VStack {
            Text(Date().formatted())
            Text(Date().formatted(date: .omitted, time: .shortened))
            Text(Date().formatted(.iso8601))
        }
        .font(.largeTitle)
        .navigationBarTitle("Date Formatter")
        
    }
}

@available(iOS 15.0, *)
struct DateFormatter_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatterExampleView()
    }
}
