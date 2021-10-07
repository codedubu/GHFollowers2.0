//
//  FollowerListVC.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/6/21.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, error in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Followers Not Found", message: error!.rawValue, buttonTitle: "Ok")
                return
            }
            print("Followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

} // END OF CLASS
