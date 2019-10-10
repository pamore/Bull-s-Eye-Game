//
//  ViewController.swift
//  Game
//
//  Created by Prachi on 10/6/19.
//  Copyright © 2019 Integral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello User", message: "Interested?", preferredStyle: .alert)
        let action = UIAlertAction(title: "Go Back", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
