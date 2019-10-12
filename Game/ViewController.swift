//
//  ViewController.swift
//  Game
//
//  Created by Prachi on 10/6/19.
//  Copyright © 2019 Integral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    
    @IBAction func showAlert() {
        let currentValue = Int((slider.value*100).rounded())
        let message = "The value is -> \(currentValue)"
        let alert = UIAlertController(title: "Hello User", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Go Back", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        //let roundedValue = (slider.value*100)
        //currentValue = Int(roundedValue.rounded())
    }

}
