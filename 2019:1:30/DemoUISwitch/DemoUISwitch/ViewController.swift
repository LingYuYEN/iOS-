//
//  ViewController.swift
//  DemoUISwitch
//
//  Created by Louis on 2019/1/30.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self._switch.transform = CGAffineTransform(scaleX: 6, y: 6)
    }

    @IBAction func onSwitchAction(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
}

