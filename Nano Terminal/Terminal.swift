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
        
        Printer.writeLine("|||||||||||||||||||||||||||||||||||||||||||||||||||| ")
        printer.writeAndTalk("           Welcome to Income Calculator           ")
        Printer.writeLine("|||||||||||||||||||||||||||||||||||||||||||||||||||| ")
        printer.writeAndTalk("Here you can calculate how much your money will pay off with two types of investments: LCI and CDB,")
        Printer.writeLine("-----------------------------------------------------------------------------------------------")
        printer.writeAndTalk("Attention, if you don't want to invest in one of the types, just type 0 in what you don't want to put your money on, \n")
        printer.writeAndTalk("Another tip, the percentage of the investment you dont want to invest just type 0 too.")
        Printer.writeLine("-----------------------------------------------------------------------------------------------")
        printer.writeAndTalk("Now lets start...")
        printer.writeAndTalk("Please type the amount money you want to invest: ")
        let value = Input.readDecimal()
        
        var investments:[InvestmentType: Decimal] = [:]
        printer.writeAndTalk("Please type the amount money you want to invest in LCI: ")
        investments[InvestmentType.lci] = Input.readDecimal()
        
        //printer.writeAndTalk("Type the percentage per year that was offer to invest in LCI: ")
        
        printer.writeAndTalk("Please type the amount money you want to invest in CDB: ")
        investments[InvestmentType.cdb] = Input.readDecimal()
        
        //printer.writeAndTalk("Type the percentage per year that was offer to invest in CDB: ")
        
        printer.writeAndTalk("Please type the duration of your investment in months: ")
        let period = Input.readInteger()
        
        
        let wallet = Wallet(period: period, value: value, investments: investments)
        let profit = wallet.getGeneralPrevision()
        Printer.writeLine("-----------------------------------------------------------------------------------------------")
        Printer.writeLine("-----------------------------------------------------------------------------------------------")
        printer.writeAndTalk("                  The profit is \(profit) Reais")
        Printer.writeLine("-----------------------------------------------------------------------------------------------")
        Printer.writeLine("-----------------------------------------------------------------------------------------------")


    }
}
