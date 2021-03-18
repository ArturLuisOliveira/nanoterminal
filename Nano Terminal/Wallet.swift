//
//  Wallet.swift
//  Nano Terminal
//
//  Created by Julia Alberti Maia on 17/03/21.
//

import Foundation

struct Wallet{
    var period: Int
    var value: Decimal
    var investments: [InvestmentType:Decimal]
    let numberFormatter = NumberFormatter()
    
    //[tipo de investimento:quanto quer investir]
    func getGeneralPrevision() -> String{

        let nonInvestedValue = value - investments.reduce(Decimal(0)){acumulator,current in acumulator + current.value}
        
        let investedValuePrevision = investments.reduce(Decimal(0)){accumulator, investment in investment.key.getPrevision(period: period, value: investment.value)}
        
        let totalInvestments = nonInvestedValue + investedValuePrevision
        
        let investNS = NSDecimalNumber(decimal:totalInvestments)
        
        return numberFormatter.string(from: investNS) ?? ""
    }
}
