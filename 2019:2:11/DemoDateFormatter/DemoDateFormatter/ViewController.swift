//
//  ViewController.swift
//  DemoDateFormatter
//
//  Created by Louis on 2019/2/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // GMT+8
        let nowTime = Date()
        print(nowTime)
        // 設定時間格式
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+8")
        dateFormatter.dateFormat = "yyyy.MM.dd HH:mm:ss zzzz"
        print(dateFormatter.string(from: nowTime))
        dateFormatter.dateFormat = "yyyy.MM.dd"
        print(dateFormatter.string(from: nowTime))
        dateFormatter.dateFormat = "E, yyyy年MM月dd日"
        print(dateFormatter.string(from: nowTime))
        dateFormatter.dateFormat = "E"
        print(dateFormatter.string(from: nowTime))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let manager = DateManager()
        let time1 = manager.dateToString(date: Date(), format: .format1)
        print(time1)
        let time2 = manager.stringToDate(string: time1, format: .format1)
        print(time2)
        
    }


}

