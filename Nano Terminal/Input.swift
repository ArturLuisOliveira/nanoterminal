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
                let printer = Printer(enableVoice: false)
                printer.writeAndTalk("Invalid string input, please type again.")
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
            } else {
                let printer = Printer(enableVoice: false)
                printer.writeAndTalk("Invalid decimal input, please type again.")
            }
        }
    }
    static func readInteger() -> Int {
        var invalidInput = true
        while invalidInput == true {
            let input = Input.readString()
            if let integer = Int(input) {
                invalidInput = false
                return integer
            } else {
                let printer = Printer(enableVoice: false)
                printer.writeAndTalk("Invalid decimal input, please type again.")
            }
        }
    }
}
