//
//  TouchbarCommands.swift
//  MarkDowner
//
//  Created by Simon Rofe on 24/5/2022.
//

import SwiftUI
import KeyWindow

struct TouchbarCommands: View {
    @KeyWindowValueBinding(MarkDownerDocument.self)
    var document: MarkDownerDocument?

    var body: some View {
        Button {
            document?.text += "**BOLD**"
        } label: {
            Text("B")
                .bold()
        }
        Button {
            document?.text += "_Italic"
        } label: {
            Text("I")
                .italic()
        }
        Button {
            let linkText = "[Title](https://link_to_page)]"
            document?.text += linkText
        } label: {
            Image(systemName: "link")
        }
        Button {
            let imageText = "![alt text](https://link_to_image)"
            document?.text += imageText
        } label: {
            Image(systemName: "photo")
        }
    }
}
