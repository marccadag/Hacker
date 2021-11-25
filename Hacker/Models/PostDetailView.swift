//
//  PostDetailView.swift
//  Hacker
//
//  Created by Marc Cadag on 10/19/21.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        WebView(urlString: post.url)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: Post(objectID: "", title: "", points: 0, url: nil))
    }
}


