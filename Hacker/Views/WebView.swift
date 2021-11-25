//
//  WebView.swift
//  Hacker
//
//  Created by Marc Cadag on 10/19/21.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString, let url = URL(string: safeString) else {
            return
        }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
