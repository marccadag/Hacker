//
//  PostsView.swift
//  Hacker
//
//  Created by Marc Cadag on 10/19/21.
//

import SwiftUI

struct PostsView: View {
    @ObservedObject var postsManager = PostsManager()
    
    var body: some View {
        NavigationView {
            List(postsManager.posts) { post in
                NavigationLink(destination: PostDetailView(post: post)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("Hacker News")
            .alert(isPresented: $postsManager.showErrorMessage) {
                Alert(title: Text(postsManager.errorMessage ?? "There was an error loading the posts."))
            }
        }
        .onAppear {
            self.postsManager.fetchPosts()
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}

