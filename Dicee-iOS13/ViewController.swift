//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // @IBOutlet allows interact with view Elements
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    var dices: [UIImage] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change Image
        // Using literals #imageLiteral(
        // leftDiceImageView.image = #imageLiteral(resourceName: "DiceSix")
        
        // Named
        leftDiceImageView.image = UIImage(named: "DiceOne")
        leftDiceImageView.alpha = 5.0
        
        rightDiceImageView.image = UIImage(imageLiteralResourceName: "DiceSix")
        
        dices = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
    }

    // IBAction let me send interactions from user
    @IBAction func onPressRollButton(_ sender: UIButton) {
        print("button clicked")
        leftDiceImageView.image = dices[getRandomIndex()]
        rightDiceImageView.image = dices.randomElement()
    }
    
    func getRandomIndex() -> Int {
        return Int.random(in: 0...dices.count-1)
    }
}

