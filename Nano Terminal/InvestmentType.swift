//
//  InvestmentType.swift
//  Nano Terminal
//
//  Created by Julia Alberti Maia on 18/03/21.
//

import Foundation

enum InvestmentType{
    case lci
    case cdb
    
    var percentage: Double {
        switch self {
        case .lci:
            return 0.2
        case .cdb:
            return 1.0
        }
    }
    
    func getPrevision(period: Int,value: Decimal) -> Decimal { //periodo = 0 tratar
        var aux: Decimal
        
        aux = value
        print(aux)
        for _ in 1...period{
            aux = aux + (aux * Decimal(percentage/100))
            print(aux)
        }
        return aux
    }
}
