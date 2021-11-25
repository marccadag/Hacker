//
//  PostsManager.swift
//  Hacker
//
//  Created by Marc Cadag on 10/19/21.
//

import Foundation

class PostsManager: NetworkManager, ObservableObject {
    @Published var posts = [Post]()
    @Published var showErrorMessage = false
    var errorMessage: String?
    
    private let urlString = "http://hn.algolia.com/api/v1/search?tags=front_page"
    
    func fetchPosts() {
        fetchData(urlString: urlString, PostResults.self) { results in
            DispatchQueue.main.async {
                self.posts = results.hits
            }
        } onError: { error in
            DispatchQueue.main.async {
                self.errorMessage = error.localizedDescription
                self.showErrorMessage = true
            }
        }
    }
}
