//
//  Scenario.swift
//  MyAdventure
//
//  Created by Jack Odom on 6/17/23.
//

import Foundation

struct Scenario {
    
    var prompt: String
    
    var choices: Dictionary<String, String>
    
    var imageName: String
    
    
    init(_ promptIn: String, _ choicesIn: Dictionary<String, String>, _ imageNameIn : String) {
        prompt = promptIn
        choices = choicesIn
        imageName = imageNameIn
    }
    
}
