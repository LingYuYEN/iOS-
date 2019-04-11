//
//  MyHeader.swift
//  DemoUITableView2
//
//  Created by Louis on 2019/2/25.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class MyHeader: UIView {
    @IBInspectable var title: String? {
        didSet {
            self.titleLabel.text = self.title
        }
    }

    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadFromNib()
    }
    
}
