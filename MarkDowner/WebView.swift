//
//  WebView.swift
//  MarkDowner
//
//  Created by Simon Rofe on 22/5/2022.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .github
    var html: String
    private var formattedHtml: String {
"""
<html>
    <head>
        <link href="\(styleSheet).css" rel="stylesheet">
    </head>
    <body>
        \(html)
    </body>
</html>
"""
    }

    init(html: String) {
        self.html = html
    }

    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
        print(formattedHtml)
        nsView.loadHTMLString(formattedHtml, baseURL: Bundle.main.resourceURL)
    }
}
