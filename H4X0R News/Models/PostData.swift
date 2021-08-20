//
//  PostData.swift
//  H4X0R News
//
//  Created by David Verbenyi on 19/08/2021.
//

import Foundation

// MARK: - Results
struct Results: Codable {
    let hits: [Post]
}

// MARK: - Post
struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
