//
//  AboutAuthorViewController.swift
//  Game
//
//  Created by Prachi on 10/13/19.
//  Copyright © 2019 Integral. All rights reserved.
//

import UIKit

class AboutAuthorViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = #imageLiteral(resourceName: "goofy")
    }

    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
