//
//  Wallet.swift
//  Nano Terminal
//
//  Created by Julia Alberti Maia on 17/03/21.
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
        for _ in 1...period{
            aux = aux + (aux * Decimal(percentage))
        }
        return aux
    }
}

struct Wallet{
    var period: Int
    var value: Decimal
    var investments: [InvestmentType:Decimal]
    //[tipo de investimento:quanto quer investir]
    func getGeneralPrevision(period: Int,investments: [InvestmentType:Decimal]) -> Decimal{
        let nonInvestedValue = value - investments.reduce(Decimal(0)){acumulator,current in acumulator + current.value}
        
        let investedValuePrevision = investments.reduce(Decimal(0)){accumulator, investment in investment.key.getPrevision(period: period, value: investment.value)}
        
        return nonInvestedValue + investedValuePrevision
    }
}
