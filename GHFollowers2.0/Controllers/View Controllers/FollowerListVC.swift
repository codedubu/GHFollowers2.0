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
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

    }

} // END OF CLASS
