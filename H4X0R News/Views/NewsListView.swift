//
//  NewsListView.swift
//  H4X0R News
//
//  Created by David Verbenyi on 16/08/2021.
//

import SwiftUI

struct NewsListView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                        }
                    })
            })
            .navigationBarTitle("H4X0R N3WS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hi Hi"),
//    Post(id: "3", title: "Bye")
//]
