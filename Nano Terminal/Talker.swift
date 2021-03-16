//
//  Talker.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation

struct Talker {
    static func talk(text: String) -> Void {
        Shell.run("say \(text)")
    }
}
