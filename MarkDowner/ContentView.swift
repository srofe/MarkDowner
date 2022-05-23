//
//  ContentView.swift
//  MarkDowner
//
//  Created by Simon Rofe on 19/5/2022.
//

import SwiftUI

enum PreviewState {
    case web
    case code
    case off
}

struct ContentView: View {
    @Binding var document: MarkDownerDocument
    @State private var previewState = PreviewState.web

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .frame(minWidth: 200)
            WebView(html: document.html)
                .frame(minWidth: 200)
        }
        .frame(minWidth: 400, idealWidth: 600, maxWidth: .infinity, minHeight: 300, idealHeight: 400, maxHeight: .infinity)
        .toolbar {
            ToolbarItem {
                Picker("", selection: $previewState) {
                    Image(systemName: "network")
                        .tag(PreviewState.web)
                    Image(systemName: "chevron.left.forwardslash.chevron.right")
                        .tag(PreviewState.code)
                    Image(systemName: "nosign")
                        .tag(PreviewState.off)
                }
                .pickerStyle(.segmented)
                .help("Hide preview, show HTML or web view")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MarkDownerDocument()))
    }
}
