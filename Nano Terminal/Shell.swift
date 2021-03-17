//
//  Shell.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation

struct Shell {
    static func run(_ command: String) -> Void {
        let task = Process()
        let pipe = Pipe()
        
        task.standardOutput = pipe
        task.standardError = pipe
        task.arguments = ["-c", command]
        task.launchPath = "/bin/zsh"
        task.launch()
        
        //let data = pipe.fileHandleForReading.readDataToEndOfFile()
        //let output = String(data: data, encoding: .utf8)!
    }
}
