//
//  PostData.swift
//  Hacker
//
//  Created by Marc Cadag on 10/19/21.
//

import Foundation

struct PostResults: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
