//
//  ViewController.swift
//  DemoUIButton
//
//  Created by Louis on 2019/1/28.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.firstButton.imageView?.contentMode = .scaleAspectFit
        
    }
    
    @IBAction func onFirstButtonAction(_ sender: Any) {
        print(#function)
    }

    @IBAction func on2ndButtonAction(_ sender: UIButton) {
        
        sender.isSelected.toggle()
        
        self.firstButton.isEnabled.toggle()
    }
    
    
}

