//
//  WebView.swift
//  MarkDowner
//
//  Created by Simon Rofe on 22/5/2022.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    var html: String

    init(html: String) {
        self.html = html
    }

    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.loadHTMLString(html, baseURL: Bundle.main.resourceURL)
    }
}
