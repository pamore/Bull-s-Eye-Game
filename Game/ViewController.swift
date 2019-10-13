//
//  ViewController.swift
//  Game
//
//  Created by Prachi on 10/6/19.
//  Copyright © 2019 Integral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var targetValue: Int = 0
    var currentValue: Int = 0
    var points: Int = 0
    var score = 0
    var round = 0
    
    @IBAction func showAlert() {
        currentValue = Int((slider.value*100).rounded())
        calculateResult()
        
        let title:String
        if(points == 100) {
            title = "Perfect! 100 points Bonus"
            points += 100
        } else if (points > 90) {
            title = "OOOOh....so close"
        } else {
            title = "You suck!"
        }
        score += points
        let message = "You scored -> \(points)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Go Back", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)/100
        updateLabels()
    }
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    func calculateResult() {
        points = 100 - abs(currentValue-targetValue)
    }
}
