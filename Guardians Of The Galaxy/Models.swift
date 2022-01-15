//
//  Models.swift
//  Guardians Of The Galaxy
//
//  Created by Youssef Bhl on 14/01/2022.
//

import Foundation

enum Like {
    case Liked
    case notLiked
}

struct Gardian {
    var name: String
    var desc: String
    var imagePath: String
    var likeStatus: Like
}


