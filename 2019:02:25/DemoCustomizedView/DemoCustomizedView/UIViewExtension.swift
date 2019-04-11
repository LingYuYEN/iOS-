//
//  UIViewExtension.swift
//  DemoCustomizedView
//
//  Created by Louis on 2019/2/25.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

extension UIView {
    
    func fullFillSuperView(_ padding: CGFloat = 0) {
        guard let superView = self.superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = false  // 告訴Xcode，constraints使用自己寫的
        
        // 設定constraint
        self.topAnchor.constraint(equalTo: superView.topAnchor, constant: padding).isActive = true  // .isActive = true以利觸發
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -padding).isActive = true
        self.leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: padding).isActive = true
        self.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -padding).isActive = true
        
        
    }
    
    func loadFromNib() {    // 透過此func將MyView.swift綁定到MyView.xib(將xib綁定到view)
        guard let name = type(of: self).description().components(separatedBy: ".").last else { return }
        // components(separatedBy: ".")目的為將檔名"DemoCustomizedView.MyView" 拆成 ["DemoCustomizedView", "MyView"]  (DemoCustomizedView是Targets name)
        // .last取該陣列最後一項則為"MyView"
        
        guard let view = Bundle.main.loadNibNamed(name, owner: self, options: nil)?.first as? UIView else { return }
        self.addSubview(view)   // 將xib加入的此view
        view.fullFillSuperView()
    }
    
}
