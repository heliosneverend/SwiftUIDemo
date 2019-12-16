//
//  WebViewPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewPage : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.renrendai.com")!)
        uiView.load(req)
    }
}


struct WebViewPage_Previews: PreviewProvider {
    static var previews: some View {
        WebViewPage()
    }
}
