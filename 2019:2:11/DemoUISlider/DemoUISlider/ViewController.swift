//
//  ViewController.swift
//  DemoUISlider
//
//  Created by Louis on 2019/2/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.slider.setMinimumTrackImage(#imageLiteral(resourceName: "minTrack"), for: .normal)
        self.slider.setMaximumTrackImage(#imageLiteral(resourceName: "maxTrack"), for: .normal)
        self.slider.setThumbImage(#imageLiteral(resourceName: "images"), for: .normal)
    }

    @IBAction func onSliderAction(_ sender: UISlider) {
        print(sender.value)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.slider.value >= self.slider.maximumValue {
            self.slider.value = self.slider.minimumValue
        } else {
            self.slider.value += 1
        }
        
    }
    
}

