//
//  ViewController.swift
//  DemoUIActivityIndicatorView
//
//  Created by Louis on 2019/2/18.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        self.activityIndicatorView.transform = CGAffineTransform(scaleX: 3, y: 3)
        
        self.activityIndicatorView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.5)
        
        self.activityIndicatorView.layer.cornerRadius = 8.0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.activityIndicatorView.isAnimating {
            self.activityIndicatorView.stopAnimating()
        } else {
            self.activityIndicatorView.startAnimating()
        }
    }
    
}

