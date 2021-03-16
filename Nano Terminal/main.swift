//
//  main.swift
//  Nano Terminal
//
//  Created by Artur Luis on 16/03/21.
//

import Foundation

func shell(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.launchPath = "/bin/zsh"
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

//PC config
//print(shell("system_profiler SPHardwareDataType"))

//IP address
//print(shell("ipconfig getifaddr en0"))

//Download history
//sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'

//shut down
//sudo shutdown -h now

//restart
//$ sudo shutdown -r now


//uptime
//Uptime

//external ip address
//curl ipecho.net/plain; echo

shell("say \"this is awesome\"")

//talk
// say "This Mac runs OS X, not OS ex"
//say -f /path/to/file.txt
