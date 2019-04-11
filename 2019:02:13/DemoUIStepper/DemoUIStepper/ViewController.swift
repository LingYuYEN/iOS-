//
//  ViewController.swift
//  DemoUIStepper
//
//  Created by Louis on 2019/2/13.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.stepper.tintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//        self.stepper.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.stepper.value = 20
    }

    @IBAction func onStepperAction(_ sender: UIStepper) {
        print(sender.value)
    }
    
}

