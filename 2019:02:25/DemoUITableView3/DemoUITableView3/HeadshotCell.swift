//
//  HeadshotCell.swift
//  DemoUITableView3
//
//  Created by Louis on 2019/2/25.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class HeadshotCell: UITableViewCell {
    
    var data: ViewController.CellType? {
        didSet {
            guard let data = data else { return }
            switch data {
            case .headshot(let image, let name):
                self.headshotImageView.image = image
                self.nameLabel.text = name
            default:
                break
            }
        }
    }
    
    @IBOutlet weak var headshotImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
