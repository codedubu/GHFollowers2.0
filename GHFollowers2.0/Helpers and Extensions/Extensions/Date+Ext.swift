//
//  Date+Ext.swift
//  GHFollowers2.0
//
//  Created by River McCaine on 10/10/21.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
} // END OF EXTENSION
