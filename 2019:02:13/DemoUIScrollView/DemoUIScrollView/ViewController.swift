//
//  ViewController.swift
//  DemoUIScrollView
//
//  Created by Louis on 2019/2/13.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func didRecognizeDoubleTap(_ sender: UITapGestureRecognizer) {
        
        if self.scrollView.zoomScale == 1.0 {
            self.scrollView.setZoomScale(3.0, animated: true)
        } else {
            self.scrollView.setZoomScale(1.0, animated: true)
        }
    }
    //    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.didRecognizeDoubleTap))
//        tap.numberOfTapsRequired = 2
//        tap.delaysTouchesBegan = true
//        self.scrollView.addGestureRecognizer(tap)
//    }
//
//    @objc func didRecognizeDoubleTap() {
//        if self.scrollView.zoomScale == 1.0 {
//            self.scrollView.setZoomScale(3.0, animated: true)
//        } else {
//            self.scrollView.setZoomScale(1.0, animated: true)
//        }
//    }


}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews.first
    }
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print(scrollView.zoomScale)
    }
}

