//
//  GetDataFromInternetHelper.swift
//  Protocol2
//
//  Created by Louis on 2019/1/16.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

protocol GetDataFromInternetHelperDelegate {
    func getDataFromInternetHelper(_ data: Data?)
}

class GetDataFromInternetHelper {
    
    /// 代理人
    var delegata: GetDataFromInternetHelperDelegate?
    
    
    let url = URL(string: "http://datacenter.taichung.gov.tw/swagger/OpenData/bb1d1f2a-27ac-4b2f-ae3a-7d6786a5ddb6")!
    
    func getData1() -> Data? {
        var result: Data?
        URLSession.shared.dataTask(with: self.url) { (data, _, _) in
            print(#file, data ?? "get nothing")
            result = data
        }.resume()
        return result
    }
    
    func getData2() {
        URLSession.shared.dataTask(with: self.url) { (data, _, _) in
            print(#file, data ?? "get nothing")
            self.delegata?.getDataFromInternetHelper(data)
        }.resume()
        
    }
    
}
