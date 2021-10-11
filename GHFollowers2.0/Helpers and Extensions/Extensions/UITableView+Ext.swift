//
//  UITableView+Ext.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/10/21.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
} // END OF EXTENSION
