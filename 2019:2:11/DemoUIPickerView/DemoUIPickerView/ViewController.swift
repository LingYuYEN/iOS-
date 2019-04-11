//
//  ViewController.swift
//  DemoUIPickerView
//
//  Created by Louis on 2019/2/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let dataArray = ["iOS5", "iOS6", "iOS7", "iOS8", "iOS9", "iOS10", "iOS11", "iOS12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.selectRow(self.dataArray.count, inComponent: 0, animated: true)
        // row(該component有幾個選項)    component(第幾行資訊) 20行目地為compile後預設位置
        
    }
}
extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.dataArray[row]
    }   //  帶入array的資料
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if self.dataArray[row] == "iOS12" {
            print("現在版本是")
        } else {
            print("XXXXXX")
        }
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.dataArray.count
    }
    
    
}


