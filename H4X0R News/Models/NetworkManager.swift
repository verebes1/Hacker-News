//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by David Verbenyi on 19/08/2021.
//

import Foundation

class NetworkManager: ObservableObject {

    @Published var posts = [Post]()

    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error == nil {
                guard let resultData = data else { return }
                let decoder = JSONDecoder()
                do {
                    let results = try decoder.decode(Results.self, from: resultData)
                    DispatchQueue.main.async {
                        self.posts = results.hits
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
