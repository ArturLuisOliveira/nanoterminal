//
//  Terminal.swift
//  Nano Terminal
//
//  Created by Artur Luis on 18/03/21.
//

import Foundation

struct Terminal {
    init() {
        var investmentType: InvestmentType
       
        Printer.writeAndTalk("Welcome to LCI and CDB investment calculator. Please type the amount money you want to invest")
        let value = Input.readDecimal()
        
        var investments:[InvestmentType: Decimal] = [:]
        Printer.writeAndTalk("Please type the amount money you want to invest in LCI")
        investments[InvestmentType.lci] = Input.readDecimal()
        
        Printer.writeAndTalk("Please type the amount money you want to invest in CDB")
        investments[InvestmentType.cdb] = Input.readDecimal()
        
        Printer.writeAndTalk("Please type the duration of your investment in months, for example, 1 for january, 12 for december.")
        let period = Input.readInteger()
        
        let wallet = Wallet(period: period, value: value, investments: investments)
        let profit = wallet.getGeneralPrevision(period: period, investments: investments)
        Printer.writeAndTalk("The profit is \(profit) dolars")
    }
}
