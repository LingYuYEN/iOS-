//
//  ViewController.swift
//  DemoUITextView
//
//  Created by Louis on 2019/2/18.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyboardWillShow(_ notification: NSNotification) {
        
        guard let infokey = notification.userInfo?[UIResponder.keyboardIsLocalUserInfoKey] else {return}
        guard let rectValue = (infokey as AnyObject).cgRectValue else {return}
        let keyboardFrame = self.view.convert(rectValue, from: nil)
        self.constraint.constant = keyboardFrame.size.height + 10
    }
    @objc private func keyboardWillHide(_ notification: NSNotification) {
        self.constraint.constant = 10
    }
    
    
}

extension ViewController: UITextViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        self.view.endEditing(true)
    }
}

