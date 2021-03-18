//
//  Terminal.swift
//  Nano Terminal
//
//  Created by Artur Luis on 18/03/21.
//

import Foundation

struct Terminal {
    init() {
        let printer = Printer(enableVoice: false)
        
        printer.writeAndTalk("Welcome to LCI and CDB investment calculator. Please type the amount money you want to invest")
        let value = Input.readDecimal()
        
        var investments:[InvestmentType: Decimal] = [:]
        printer.writeAndTalk("Please type the amount money you want to invest in LCI")
        investments[InvestmentType.lci] = Input.readDecimal()
        
        printer.writeAndTalk("Please type the amount money you want to invest in CDB")
        investments[InvestmentType.cdb] = Input.readDecimal()
        
        printer.writeAndTalk("Please type the duration of your investment in months.")
        let period = Input.readInteger()
        
        let wallet = Wallet(period: period, value: value, investments: investments)
        let profit = wallet.getGeneralPrevision()
        printer.writeAndTalk("The profit is \(profit) dolars")
    }
}
