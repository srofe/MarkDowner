//
//  ContentView.swift
//  MarkDowner
//
//  Created by Simon Rofe on 19/5/2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MarkDownerDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MarkDownerDocument()))
    }
}
