//
//  ViewController.swift
//  DemoUITextField
//
//  Created by Louis on 2019/1/30.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.nameTextField.text = "廖阿強"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.nameTextField.becomeFirstResponder()   // 游標移到我身上
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.nameTextField.resignFirstResponder()   // becomeFirstResponder的反動作
        
        self.view.endEditing(true)  // 點到空白處時收鍵盤
    }
    

    @IBAction func onButtonAction(_ sender: Any) {
       guard let content = self.nameTextField.text else { return }
        print(content)
    }
    
    @IBAction func onTextFieldAction(_ sender: UITextField) {
        print(sender.text)  // 即時取得輸入文字
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.passwordTextField.becomeFirstResponder()
        return true
    }
    
    
}
