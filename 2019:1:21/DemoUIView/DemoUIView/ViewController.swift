//
//  ViewController.swift
//  DemoUIView
//
//  Created by Louis on 2019/1/21.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Red: UIView!
    // UIView - user interface View

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Red.layer.cornerRadius = 10
        
        // bordWidth與borderColor必須一起設定
        self.Red.layer.borderWidth = 1
        // R:33, G:100, B:80
        // core graphic(cgColor)
        // 第一種寫法 self.Red.layer.borderColor = UIColor(red: 33/255, green: 100/255, blue: 80/255, alpha: 1.0).cgColor
        self.Red.layer.borderColor  = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)  //Color Literal
        
        
    }


}

