//
//  ViewController.swift
//  DemoUIAlertController
//
//  Created by Louis on 2019/2/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var accountTextField: UITextField?
    var passwordTextField: UITextField?
    
    
    @IBAction func onAlertButtonAction(_ sender: Any) {
        let alert = UIAlertController(title: "標題", message: "123123", preferredStyle: .alert)
        // action style
        // 如果有兩個action而已， .cancel會在左邊，其餘的按 add 的順序由左而右排列
        // 如果超過兩個action， .cancel會在最下方，其餘的按 add 的順序由上而下排列
        // .default(系統預設自動排列) , .destructive(同.default，但字體成紅色)
        let purpleAction = UIAlertAction(title: "PURPLE", style: .default) { _ in
            print("Purple action")
            print(self.accountTextField?.text)
            print(self.passwordTextField?.text)
        }
        alert.addAction(purpleAction)
        purpleAction.setValue(#colorLiteral(red: 0.1195570628, green: 1, blue: 0.09350550962, alpha: 1), forKey: "titleTextColor")
        
        let orangeAction = UIAlertAction(title: "ORANGE", style: .cancel) { _ in
            print("Orange action")
        }
        alert.addAction(orangeAction)
        let okAction = UIAlertAction(title: "OK", style: .destructive) { _ in
            print("OK action")
        }
        alert.addAction(okAction)
        
        alert.addTextField { textField in
            textField.placeholder = "請輸入帳號"
            textField.isSecureTextEntry = false
            self.accountTextField = textField
        }
        
        alert.addTextField { textField in
            textField.placeholder = "請輸入密碼"
            textField.isSecureTextEntry = true
            self.passwordTextField = textField
        }
        
        
        self.present(alert, animated: false)
        
    }
    

    
    @IBAction func onActionsheetButtonAction() {
        
        let actionSheet = UIAlertController(title: "標題", message: "123123", preferredStyle: .actionSheet)

        let purpleAction = UIAlertAction(title: "PURPLE", style: .default) { _ in
            print("Purple action")

        }
        actionSheet.addAction(purpleAction)
        purpleAction.setValue(#colorLiteral(red: 0.1195570628, green: 1, blue: 0.09350550962, alpha: 1), forKey: "titleTextColor")
        
        let orangeAction = UIAlertAction(title: "ORANGE", style: .cancel) { _ in
            print("Orange action")
        }
        actionSheet.addAction(orangeAction)
        let okAction = UIAlertAction(title: "OK", style: .destructive) { _ in
            print("OK action")
        }
        actionSheet.addAction(okAction)
        actionSheet.popoverPresentationController?.sourceView = self.view // 目的為避免平板閃退
        
        self.present(actionSheet, animated: false)
        
    }
    

}

