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
        calculateResult()
        let title:String = getTitle()
        score += points
        
        let message = "You scored : \(points)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
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
        currentValue = Int((slider.value*100).rounded())
        points = 100 - abs(currentValue-targetValue)
    }
    func getTitle() -> String {
        if(points == 100) {
            points += 100
            return "Perfect! 100 points Bonus"
        } else if (points > 90) {
            return "OOOOh....so close"
        } else {
            return "You suck!"
        }
    }
    @IBAction func startNewGame() {
        round = 0
        score = 0
        startNewRound()
    }
    
}
