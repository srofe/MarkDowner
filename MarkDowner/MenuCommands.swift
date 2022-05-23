//
//  MenuCommands.swift
//  MarkDowner
//
//  Created by Simon Rofe on 23/5/2022.
//

import SwiftUI

struct MenuCommands: Commands {
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .github
    @AppStorage("editorFontSize") var editorFontSize: Double = 14

    var body: some Commands {
        CommandMenu("Display") {
            ForEach(StyleSheet.allCases, id: \.self) { style in
                Button {
                    styleSheet = style
                } label: {
                    Text(style.rawValue)
                        .foregroundColor(style == styleSheet ? .accentColor : .primary)
                }
                .keyboardShortcut(KeyEquivalent(style.rawValue.first!))
            }
            Divider()
            Menu("Font Size") {
                Button("Smaller") {
                    if editorFontSize > 8 {
                        editorFontSize -= 1
                    }
                }
                .keyboardShortcut("-")
                Button("Reset") {
                    editorFontSize = 14
                }
                .keyboardShortcut("0")
                Button("Larger") {
                    editorFontSize += 1
                }
                .keyboardShortcut("+")
            }
        }
        // TODO: More menus
    }
}
