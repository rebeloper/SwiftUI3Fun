//
//  ListPullToRefreshExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ListPullToRefreshExampleView: View {
    
    @StateObject private var viewModel = PullToRefreshExampleViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.names, id:\.self) { name in
                Text(name)
            }
        }
        .navigationBarTitle("Pull to refresh")
    }
}

@available(iOS 15.0, *)
struct PullToRefreshExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListPullToRefreshExampleView()
    }
}
