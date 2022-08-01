//
//  ViewController.swift
//  Destiny
//
//  Created by Дмитрий Х on 01.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMadeFirst(_ sender: UIButton) {
        storyBrain.updateByFirstButton()
        updateUI()
    }
    
    @IBAction func choiceMadeSecond(_ sender: UIButton) {
        storyBrain.updateBySecondButton()
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.updateFirstButton(), for: .normal)
        choice2Button.setTitle(storyBrain.updateSecondButton(), for: .normal)
    }
    
}

