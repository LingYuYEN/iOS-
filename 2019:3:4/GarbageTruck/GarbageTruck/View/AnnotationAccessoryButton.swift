//
//  AnnotationAccessoryButton.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/18.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class AnnotationAccessoryButton: UIButton {

    var handler: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initAccessoryButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initAccessoryButton()
    }
    
    private func initAccessoryButton() {
        self.layer.cornerRadius = 6.5
        self.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        self.frame.size = CGSize(width: 44, height: 44)
        self.addTarget(self, action: #selector(self.onButtonAction), for: .touchUpInside)
    }
    
    @objc private func onButtonAction() {
        self.handler?()
    }
    

}
