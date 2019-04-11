//
//  ViewController.swift
//  DemoUIPageControl
//
//  Created by Louis on 2019/2/18.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let images = [#imageLiteral(resourceName: "m0"), #imageLiteral(resourceName: "m1"), #imageLiteral(resourceName: "m3"), #imageLiteral(resourceName: "m4"), #imageLiteral(resourceName: "m2")]
    let defaultIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imageView.image = self.images[defaultIndex]
        self.pageControl.numberOfPages = self.images.count
        self.pageControl.currentPage = self.defaultIndex
        
    }


    @IBAction func onPageControlAction(_ sender: UIPageControl) {
        self.imageView.image = self.images[sender.currentPage]
    }
    
    
    
}

