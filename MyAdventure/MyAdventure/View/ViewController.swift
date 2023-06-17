//
//  ViewController.swift
//  MyAdventure
//
//  Created by Jack Odom on 6/17/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameLogic = Logic()
        scenario = gameLogic!.scenario0
        options = []
        updateUI()
        
    }

    var scenario : Scenario?
    var options : Array<String>?
    var gameLogic : Logic?
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var option1Button: UIButton!
    
    @IBOutlet weak var option2Button: UIButton!
    
    @IBOutlet weak var option3Button: UIButton!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        scenario = gameLogic!.scenarioDict![scenario!.choices[sender.titleLabel!.text!]!]
        updateUI()
    }
    
    func updateUI() {
        promptLabel.text = scenario!.prompt
        options!.removeAll()
        for (key, _) in scenario!.choices {
            options!.append(key)
        }
        option1Button.setTitle(options![0], for: .normal)
        option2Button.setTitle(options![1], for: .normal)
        option3Button.setTitle(options![2], for: .normal)
        background.image = UIImage(named: scenario!.imageName)
        
    }
}

