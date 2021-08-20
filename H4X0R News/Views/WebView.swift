//
//  WebView.swift
//  H4X0R News
//
//  Created by David Verbenyi on 20/08/2021.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString else {return}
        guard let url = URL(string: urlString) else {return}
        let request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
        uiView.load(request)
    }


}
