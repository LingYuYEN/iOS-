//
//  main.swift
//  Protocol2
//
//  Created by Louis on 2019/1/16.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

class Main {
    let helper = GetDataFromInternetHelper()
}

class ViewController: Main {
    override init() {
        super.init()
        // 錯誤示範
//        let information = self.helper.getData1()
//        print(#file, information)
        
        // 合理的手法...之一
        self.helper.delegata = self
        self.helper.getData2()

    }
}

extension ViewController: GetDataFromInternetHelperDelegate {
    func getDataFromInternetHelper(_ data: Data?) {
        print(#file, data)
    }
}

let va = ViewController()

RunLoop.current.run()
