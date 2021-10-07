//
//  NetworkManager.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/7/21.
//

import Foundation

class NetworkManager {
    
    static let shared       = NetworkManager()
    let baseURL             = "https://api.github.com/users/"
    let followersPerPage    = 100
    
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completion: @escaping ([Follower]?, GFError?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=\(followersPerPage)&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completion(nil, .invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completion(nil, .unableToComplete)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completion(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completion(followers, nil)
            } catch {
                completion(nil, .invalidData)
            }
        }
        
        task.resume()
    }
} // END OF CLASS
