//
//  Terminal.swift
//  Nano Terminal
//
//  Created by Artur Luis on 18/03/21.
//

import Foundation

struct Terminal {
    
    let divider = "-----------------------------------------------------------------------------------------------"
    
    let printer = Printer(enableVoice: false)
    var investments:[Investment] = []
    init() {
        showIntroduction()
        
        let value = getInvestedMoney()
        let lciInvestment = getInvestment(type: .lci)
        let cdbInvestment = getInvestment(type: .cdb)
        let period = getPeriod()
        
        investments.append(lciInvestment)
        investments.append(cdbInvestment)
        
        let wallet = Wallet(period: period, value: value, investments: investments)
        
        showPrevision(wallet)
    }
    
    func showIntroduction(){
        Printer.writeLines(
            ["|||||||||||||||||||||||||||||||||||||||||||||||||||| ",
             "           Welcome to Income Calculator           ",
             "|||||||||||||||||||||||||||||||||||||||||||||||||||| ",
             "Here you can calculate how much your money will pay off with two types of investments: LCI and CDB,",
             divider,
             "Attention, if you don't want to invest in one of the types, just type 0 in what you don't want to put your money on, \n",
             "Another tip, the percentage of the investment you dont want to invest just type 0 too.",
             divider,
             "Now lets start..."
            ])
        
    }
    
    func getInvestment(type: InvestmentType) -> Investment {
        Printer.writeLine("Type the percentage per year that was offer to invest in \(type.name): ")
        let percentage = Input.readDecimal()
        
        Printer.writeLine("Please type the amount money you want to invest in \(type.name): ")
        let value = Input.readDecimal()
        let investment = Investment(investmentType: type, percentage: percentage, value: value)
        return investment
    }
    
    func getInvestedMoney() -> Decimal {
        Printer.writeLine("Please type the amount money you want to invest: ")
        let value = Input.readDecimal()
        return value
    }
    
    func getPeriod() -> Int {
        printer.writeAndTalk("Please type the duration of your investment in months: ")
        let period = Input.readInteger()
        return period
    }
    
    func showPrevision(_ wallet: Wallet) {
        let profit = wallet.getGeneralPrevision()
        let dates = Dates()
        let timePassed = dates.getDateAfterPeriod(months: wallet.period)
        Printer.writeLines(
            [divider,
             divider,
             "The money available in \(timePassed) will be \(profit) Reais",
             divider,
             divider
            ])
    }
}
