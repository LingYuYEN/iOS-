//
//  LoadingView.swift
//  WebView
//
//  Created by smallHappy on 2017/2/24.
//  Copyright © 2017年 SmallHappy. All rights reserved.
//

import UIKit

/** 
 
 這是讀取動畫，view的center座標鎖定於螢幕中央，view的寬高鎖定為70，宣告後改變frame無效。
 
 兩種樣式(style)可供選擇，預設為.gray。
 
 */

class LoadingAnimatingView: UIView {
    
    enum LoadingAnimatingViewStyle {
        /// 白底，灰色activityIndicator
        case white
        /// 黑底，白色activityIndicator
        case gray
    }
    /// 讀取動畫之樣式
    var style: LoadingAnimatingViewStyle = .gray {
        willSet {
            switch newValue {
            case .white:
                self.backgroundColor = UIColor.white.withAlphaComponent(0.75)
                self.activityIndicatorView.style = .gray
            case .gray:
                self.backgroundColor = UIColor.black.withAlphaComponent(0.75)
                self.activityIndicatorView.style = .white
            }
        }
    }
    
    /// 動畫使否執行中
    var isAnimating: Bool {
        return self.activityIndicatorView.isAnimating
    }
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let _view = UIActivityIndicatorView()
        _view.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        _view.hidesWhenStopped = true
        _view.stopAnimating()
        self.addSubview(_view)
        return _view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initUI()
    }
    
    override func layoutSubviews() {
        self.setUI()
    }
    
    //MARK: - function
    private func initUI() {
        self.isHidden = true
        self.layer.cornerRadius = 8.0
        self.style = .gray
    }

    private func setUI() {
        let viewSize: CGFloat = 70
        self.frame.size = CGSize(width: viewSize, height: viewSize)
        self.center = CGPoint(x: self.superview!.frame.width / 2, y: self.superview!.frame.height / 2)
        self.activityIndicatorView.center = CGPoint(x: viewSize / 2, y: viewSize / 2)
    }
    
    func start() {
        self.isHidden = false
        self.activityIndicatorView.startAnimating()
    }
    
    func stop() {
        self.isHidden = true
        self.activityIndicatorView.stopAnimating()
    }
    
}
