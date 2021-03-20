//
//  InvestmentType.swift
//  Nano Terminal
//
//  Created by Julia Alberti Maia on 18/03/21.
//

import Foundation

enum InvestmentType {
    case lci, cdb
    
    var name: String {
        switch self {
        case .cdb:
            return "CDB"
        case .lci:
            return "LCI"
        }
    }
}
