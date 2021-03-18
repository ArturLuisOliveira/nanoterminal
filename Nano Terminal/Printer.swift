//
//  Printer.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation

struct Printer {
    let enableVoice: Bool
    
    static func writeLine(_ text: String){
        print(text)
    }
    
    static func writeLines(_ lines: [String]){
        lines.forEach{ line in Printer.writeLine(line) }
    }
    
    func writeAndTalk(_ text:String) {
        Printer.writeLine(text)
        if(enableVoice) {Talker.talk(text)}
    }
}


