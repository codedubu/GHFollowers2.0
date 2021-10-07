//
//  User.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/7/21.
//

import Foundation

struct User: Codable {
    var login: String
    var htmlUrl: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    var createdAt: String
    
} // END OF STRUCT
