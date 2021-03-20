//
//  Date.swift
//  Nano Terminal
//
//  Created by Artur Luis on 20/03/21.
//

import Foundation

struct Dates {
    
    var shortDateFormat: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM y"
        return dateFormatter
    }
    
    func getDateAfterPeriod(months: Int) -> String {
        let today = Date()
        var added = DateComponents()
        added.month = months
        
        if let futureDate = Calendar.current.date(byAdding: added, to: today) {
            return shortDateFormat.string(from: futureDate)
        } else { return "" }
        
        
        
    }
}
