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
    let story0 = "You see a fork in the road."
    let choice1: String = ""
    let choice2: String = ""
    // let font = UIFont(name: "Marker Felt", size: 35) ?? .systemFont(ofSize: 35)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        //choice1Button.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getFirstChoice(), for: .normal)
        choice2Button.setTitle(storyBrain.getSecondChoice(), for: .normal)
    }
}

