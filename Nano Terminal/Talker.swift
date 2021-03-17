//
//  Talker.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation

struct Talker {
    static func talk(_ text: String) -> Void {
        Shell.run("say \"\(text)\"")
    }
    static func talkMany(_ texts: [String]) -> Void {
        texts.forEach{ text in Shell.run("say \"\(text)\"")}
    }
    
}
