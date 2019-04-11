//
//  AnnotationAccessoryLabel.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/18.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class AnnotationAccessoryLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initAccessoryLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initAccessoryLabel()
    }
    
    private func initAccessoryLabel() {
        let color = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        self.frame.size = CGSize(width: 44, height: 44)
        self.textColor = color
        self.textAlignment = .center
        
        let ringSize: CGFloat = 30
        let ringView = UIView(frame: CGRect(x: 7, y: 7, width: ringSize, height: ringSize))
        
        ringView.backgroundColor = .clear       // clear 透明
        ringView.layer.cornerRadius = ringSize / 2
        ringView.layer.borderColor = color.cgColor
        ringView.layer.borderWidth = 1
        self.addSubview(ringView)
        
        
    }

 

}
