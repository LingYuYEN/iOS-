//
//  MyView.swift
//  DemoCustomizedView
//
//  Created by Louis on 2019/2/25.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class MyView: UIView {

    @IBInspectable var baseColor: UIColor? {
        didSet {
            self.baseView.backgroundColor = self.baseColor
        }
    }   // 自訂一個屬性至工具區
    
    @IBOutlet weak var baseView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadFromNib()
    }   // 建構 for 程式碼使用
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadFromNib()
    }   // 建構 for storyboard使用
    
}
