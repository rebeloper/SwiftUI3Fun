//
//  ExampleView.swift
//  SwiftUI3Demo
//
//  Created by Alex Nagy on 10.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ExampleView: View {
    
    let item: ExampleItem
    
    var body: some View {
        switch item.index {
        case 0:
            ListPullToRefreshExampleView()
        case 1:
            ListSeparatorExampleView()
        case 2:
            ListSwipeActionsExampleView()
        case 3:
            SearchBarExampleView()
        case 4:
            AsyncImageExampleView()
        case 5:
            MaterialExampleView()
        case 6:
            OnSubmitExampleView()
        case 7:
            SafeAreaInsetExampleView()
        case 8:
            SheetInteractiveDismissExampleView()
        case 9:
            KeyboardAccessoryExampleView()
        case 10:
            ShowHideKeyboardExampleView()
        case 11:
            FocusStateExampleView()
        case 12:
            BindedCollectionExampleView()
        case 13:
            ForegroundStylesExampleView()
        case 14:
            SFSymbolsExampleView()
        case 15:
            MarkdownExampleView()
        case 16:
            DateFormatterExampleView()
        case 17:
            ButtonExampleView()
        case 18:
            ControlGroupExampleView()
        case 19:
            AlertExampleView()
        case 20:
            ConfirmationDialogExampleView()
        default:
            EmptyView()
        }
    }
}

@available(iOS 15.0, *)
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView(item: .init(title: "Example", index: 0))
    }
}
