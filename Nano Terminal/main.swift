//
//  main.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation


// artur

//Printer.writeAndTalk("Type the string value:")
//let stringValue = Input.readString()
//
//
//Printer.writeAndTalk("Type double value:")
//let decimalValue = Input.readDecimal()
//
//Printer.writeAndTalk("Thank you for typing \(stringValue) and \(decimalValue)")


// ----




// julia
var investments = [InvestmentType.cdb : Decimal(500)]
var x = Wallet(period: 12, value: 1000, investments: investments)
print(x.getGeneralPrevision(period: 12, investments: [InvestmentType.cdb : Decimal(500)]))

//---
