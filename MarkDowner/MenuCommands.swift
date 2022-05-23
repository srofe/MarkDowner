//
//  MenuCommands.swift
//  MarkDowner
//
//  Created by Simon Rofe on 23/5/2022.
//

import SwiftUI

struct MenuCommands: Commands {
    @AppStorage("stylesheet") var stylesheet: StyleSheet = .github

    var body: some Commands {
        CommandMenu("Display") {
            ForEach(StyleSheet.allCases, id: \.self) { style in
                Button {
                    stylesheet = style
                } label: {
                    Text(style.rawValue)
                }
            }
            // TODO: More menu items
        }
        // TODO: More menus
    }
}
