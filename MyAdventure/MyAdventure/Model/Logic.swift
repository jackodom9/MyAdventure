//
//  Logic.swift
//  MyAdventure
//
//  Created by Jack Odom on 6/17/23.
//

import Foundation

struct Logic {
    var scenarioDict : Dictionary<String, Scenario>?
    
    var scenario0: Scenario?
    var scenario1: Scenario?
    var scenario2: Scenario?
    var scenario3: Scenario?

    var scenario1_1: Scenario?
    var scenario1_2: Scenario?
    var scenario1_3: Scenario?

    var scenario2_1: Scenario?
    var scenario2_2: Scenario?
    var scenario2_3: Scenario?

    var scenario3_1: Scenario?
    var scenario3_2: Scenario?
    var scenario3_3: Scenario?

    var scenario1_1_1: Scenario?
    var scenario1_1_2: Scenario?
    var scenario1_1_3: Scenario?

    var scenario1_2_1: Scenario?
    var scenario1_2_2: Scenario?
    var scenario1_2_3: Scenario?

    var scenario2_1_1: Scenario?
    var scenario2_1_2: Scenario?
    var scenario2_1_3: Scenario?
    let prompt0 = "You find yourself in some kind of prison cell. You see a door in front of you, and find a trapdoor in the corner."
    let prompt1 = "You open the door and find a long, foreboding hallway."
    let prompt2 = "You crawl through the trapdoor and see stairs descending into the depths."
    let prompt3 = "You wait patiently in your cell, and suddenly hear a lock sound from the door and the trapdoor."
    
    let prompt1_1 = "You calmly walk down the hallway, but see that some sort of creature is crawling out of the trapdoor behind you."
    let prompt1_2 = "You carefully examine the space at your end of the hallway, and see a small button hidden behind the door latch."
    
    // Leads to 0
    let prompt1_3 = "You turn around and walk back into the cell."
    
    let prompt2_1 = "You slowly descend down the steps to find a solid wooden door at the end."
    
    // Failure
    let prompt2_2 = "You take a running start and throw yourself into the abyss."
    
    // Leads to 0
    let prompt2_3 = "You turn around and return to the prison cell."
    
    // Success
    let prompt3_1 = "You bang on the front door wildly until it cracks open, a man appears in the opening and he leads you to safety."
    // Failure
    let prompt3_2 = "You bang on the trapdoor wildly, until you begin to hear a banging back. Suddenly the trapdoor flies open and a horrifying creature crawls out."
    // Failure
    let prompt3_3 = "You wait patiently in the room until the trapdoor suddenly flies open, at which point a horrifying creature emerges."
    
    // Failure
    let prompt1_1_1 = "You sprint away from the monster, but it quickly makes up the distance and leaps on top of you."
    // Success
    let prompt1_1_2 = "You accept your fate and just stand there. The monster flies by you, you follow it and find yourself outside to safety."
    // Failure
    let prompt1_1_3 = "You sprint towards the monster, it clearly takes you as a threat and attacks you."
    
    //Success
    let prompt1_2_1 = "You press the button, a hatch opens in the wall leading to safety."
    // Leads to 1_1
    let prompt1_2_2 = "You ignore the trapdoor, and calmly walk down the hallway, but see that some sort of creature is crawling out of the trapdoor behind you."
    // Leads to 0
    let prompt1_2_3 = "You turn around and return to the prison cell."
    
    // Success
    let prompt2_1_1 = "You open the door, and it surprisingly leads directly to escape and safety."
    
    // Leads to 0
    let prompt2_1_2 = "You go back up and return to the cell."
    
    // Return to 2_1
    let prompt2_1_3 = "You wait at the bottom of the stairs for a few minutes, but nothing happens."
    
    let choices0 = ["Take the door." : "scenario1",
                    "Take the trapdoor." : "scenario2",
                    "Wait in the cell." : "scenario3"]
    
    let choices1 = ["Walk down the hallway" : "scenario1_1",
                    "Examine your surroundings" : "scenario1_2",
                    "Turn around to the cell" : "scenario1_3"]
    let choices2 = ["Slowly descend the stairs" : "scenario2_1",
                    "Throw yourself down the stairs" : "scenario2_2",
                    "Go back to the cell" : "scenario2_3"]
    let choices3 = ["Bang on the door" : "scenario3_1",
                    "Bang on the trapdoor" : "scenario3_2",
                    "Continue waiting" : "scenario3_3"]
    
    let choices1_1 = ["Run away from the monster" : "scenario1_1_1",
                      "Accept your fate": "scenario1_1_2",
                      "Run towards the monster" : "scenario1_1_3"]
    let choices1_2 = ["Press the button" : "scenario1_2_1",
                      "Walk down the hallway" : "scenario1_2_2",
                      "Turn around to the cell" : "scenario1_2_3"]
    let choices1_3 = ["Take the door." : "scenario1",
                       "Take the trapdoor." : "scenario2",
                       "Wait in the cell." : "scenario3"]
    
    let choices2_1 = ["Open the door" : "scenario2_1_1",
                      "Go back to the room" : "scenario2_1_2",
                      "Wait at the bottom" : "scenario2_1_3"]
    let choices2_2 = ["Failure! Try Again" : "scenario0",
                      "Failure! Try Again " : "scenario0",
                      "Failure! Try Again  " : "scenario0"]
    let choices2_3 = ["Take the door." : "scenario1",
                       "Take the trapdoor." : "scenario2",
                       "Wait in the cell." : "scenario3"]
    
    let choices3_1 = ["Success! Try Again" : "scenario0",
                      "Success! Try Again " : "scenario0",
                      "Success! Try Again  " : "scenario0"]
    let choices3_2 = ["Failure! Try Again" : "scenario0",
                      "Failure! Try Again " : "scenario0",
                      "Failure! Try Again  " : "scenario0"]
    let choices3_3 = ["Failure! Try Again" : "scenario0",
                      "Failure! Try Again " : "scenario0",
                      "Failure! Try Again  " : "scenario0"]
    
    let choices1_1_1 = ["Failure! Try Again" : "scenario0",
                        "Failure! Try Again " : "scenario0",
                        "Failure! Try Again  " : "scenario0"]
    let choices1_1_2 = ["Success! Try Again" : "scenario0",
                        "Success! Try Again " : "scenario0",
                        "Success! Try Again  " : "scenario0"]
    let choices1_1_3 = ["Failure! Try Again" : "scenario0",
                        "Failure! Try Again " : "scenario0",
                        "Failure! Try Again  " : "scenario0"]
    
    let choices1_2_1 = ["Success! Try Again" : "scenario0",
                        "Success! Try Again " : "scenario0",
                        "Success! Try Again  " : "scenario0"]
    let choices1_2_2 = ["Run away from the monster" : "scenario1_1_1",
                        "Accept your fate": "scenario1_1_2",
                        "Run towards the monster" : "scenario1_1_3"]
    let choices1_2_3 = ["Take the door." : "scenario1",
                        "Take the trapdoor." : "scenario2",
                        "Wait in the cell." : "scenario3"]
    
    let choices2_1_1 = ["Success! Try Again" : "scenario0",
                        "Success! Try Again " : "scenario0",
                        "Success! Try Again  " : "scenario0"]
    let choices2_1_2 = ["Take the door." : "scenario1",
                        "Take the trapdoor." : "scenario2",
                        "Wait in the cell." : "scenario3"]
    let choices2_1_3 = ["Open the door" : "scenario2_1_1",
                        "Go back to the room" : "scenario2_1_2",
                        "Wait at the bottom" : "scenario2_1_3"]
    
    let cell = "Cell"
    let hallway = "Hallway"
    let stairs = "Stairs"
    
    init() {
        scenario0 = Scenario(prompt0, choices0, cell)
        scenario1 = Scenario(prompt1, choices1, hallway)
        scenario2 = Scenario(prompt2, choices2, stairs)
        scenario3 = Scenario(prompt3, choices3, cell)

        scenario1_1 = Scenario(prompt1_1, choices1_1, hallway)
        scenario1_2 = Scenario(prompt1_2, choices1_2, hallway)
        scenario1_3 = Scenario(prompt1_3, choices1_3, cell)

        scenario2_1 = Scenario(prompt2_1, choices2_1, stairs)
        scenario2_2 = Scenario(prompt2_2, choices2_2, stairs)
        scenario2_3 = Scenario(prompt2_3, choices2_3, cell)

        scenario3_1 = Scenario(prompt3_1, choices3_1, cell)
        scenario3_2 = Scenario(prompt3_2, choices3_2, cell)
        scenario3_3 = Scenario(prompt3_3, choices3_3, cell)

        scenario1_1_1 = Scenario(prompt1_1_1, choices1_1_1, hallway)
        scenario1_1_2 = Scenario(prompt1_1_2, choices1_1_2,hallway)
        scenario1_1_3 = Scenario(prompt1_1_3, choices1_1_3, hallway)

        scenario1_2_1 = Scenario(prompt1_2_1, choices1_2_1,hallway)
        scenario1_2_2 = Scenario(prompt1_2_2, choices1_2_2,hallway)
        scenario1_2_3 = Scenario(prompt1_2_3, choices1_2_3,cell)

        scenario2_1_1 = Scenario(prompt2_1_1, choices2_1_1, stairs)
        scenario2_1_2 = Scenario(prompt2_1_2, choices2_1_2, cell)
        scenario2_1_3 = Scenario(prompt2_1_3, choices2_1_3, stairs)
        scenarioDict = [
            "scenario0": scenario0!,
            "scenario1": scenario1!,
            "scenario2": scenario2!,
            "scenario3": scenario3!,
            "scenario1_1": scenario1_1!,
            "scenario1_2": scenario1_2!,
            "scenario1_3": scenario1_3!,
            "scenario2_1": scenario2_1!,
            "scenario2_2": scenario2_2!,
            "scenario2_3": scenario2_3!,
            "scenario3_1": scenario3_1!,
            "scenario3_2": scenario3_2!,
            "scenario3_3": scenario3_3!,
            "scenario1_1_1": scenario1_1_1!,
            "scenario1_1_2": scenario1_1_2!,
            "scenario1_1_3": scenario1_1_3!,
            "scenario1_2_1": scenario1_2_1!,
            "scenario1_2_2": scenario1_2_2!,
            "scenario1_2_3": scenario1_2_3!,
            "scenario2_1_1": scenario2_1_1!,
            "scenario2_1_2": scenario2_1_2!,
            "scenario2_1_3": scenario2_1_3!
        ]
    }
}

