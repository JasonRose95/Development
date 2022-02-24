//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: (sender.titleLabel?.text)!)
        storyBrain.updateUI(storyLabel:storyLabel, choice1Button:choice1Button, choice2Button:choice2Button)
    }
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyBrain.updateUI(storyLabel:storyLabel, choice1Button:choice1Button, choice2Button:choice2Button)
        
    }
    
}

