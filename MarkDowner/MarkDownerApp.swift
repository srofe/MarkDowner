//
//  MarkDownerApp.swift
//  MarkDowner
//
//  Created by Simon Rofe on 19/5/2022.
//

import SwiftUI
import KeyWindow

@main
struct MarkDownerApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: MarkDownerDocument()) { file in
            ContentView(document: file.$document)
                .observeWindow()
        }
        .commands {
            MenuCommands()
        }
    }
}
