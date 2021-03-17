//
//  Input.swift
//  Nano Terminal
//
//  Created by Artur Luis on 17/03/21.
//

import Foundation


struct Input {
    static func readString() -> String {
        var invalidInput = true
        while invalidInput == true {
            let string = readLine()
            if ((string) != nil) {
                invalidInput = false
                return string!
            } else {
                Printer.writeAndTalk("Invalid Input. Please insert a valid string.")
            }
        }
    }
    static func readDecimal() -> Decimal {
        var invalidInput = true
        while invalidInput == true {
            let input = Input.readString()
            if let decimal = Decimal(string: input) {
                invalidInput = false
                return decimal
            } else {  Printer.writeAndTalk("Invalid Input. Please insert a valid decimal number.") }
        }
    }
}
