//
//  ViewController.swift
//  DemoUISegmentedControl
//
//  Created by Louis on 2019/2/13.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.segmentedControl.selectedSegmentIndex = 0
    }

    @IBAction func onSegmentControl(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
}

