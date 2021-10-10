//
//  User.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/7/21.
//

import Foundation

struct User: Codable {
    let login: String
    let htmlUrl: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let createdAt: String
    
} // END OF STRUCT
