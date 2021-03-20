//
//  Investment.swift
//  Nano Terminal
//
//  Created by Artur Luis on 20/03/21.
//

import Foundation

struct Investment: Hashable {
    let investmentType: InvestmentType
    let percentage: Decimal
    let value: Decimal
    
    func getPrevision(period: Int,value: Decimal) -> Decimal { //periodo = 0 tratar
        var aux: Decimal
        
        aux = value
        for _ in 1...period{
            aux = aux + (aux * percentage/100)
            
            //print(aux)
        }
        return aux
    }
}
