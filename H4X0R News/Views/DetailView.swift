//
//  DetailView.swift
//  H4X0R News
//
//  Created by David Verbenyi on 20/08/2021.
//

import SwiftUI

struct DetailView: View {

    var url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}
