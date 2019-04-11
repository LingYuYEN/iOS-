//
//  ViewController.swift
//  DemoEnum
//
//  Created by Louis on 2019/1/7.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    enum ButtonTag: Int {
        case red = 1, yellow, green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redButton.tag = ButtonTag.red.rawValue
        yellowButton.tag = ButtonTag.yellow.rawValue
        greenButton.tag = ButtonTag.green.rawValue
    }

    @IBAction func onButtonAction(_ sender: UIButton) {
        // 處理optional的其中一種方式(guard)
        guard let tag = ButtonTag(rawValue: sender.tag) else {
            return
        }
        switch tag {
        case .red:
            view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        case .yellow:
            view.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        case .green:
            view.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
    }
    
}

