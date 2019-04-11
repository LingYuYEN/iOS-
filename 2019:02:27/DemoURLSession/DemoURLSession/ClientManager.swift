//
//  ClientManager.swift
//  DemoURLSession
//
//  Created by Louis on 2019/2/27.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

class ClientManager {

    // request(請求) - GET or POST(安全性較高，傳出前先封包)
    enum HTTPMethod: String {
        case get = "GET", post = "POST"
    }
    
    func getJsonData(method: HTTPMethod = .get, url: URL, body: Data? = nil, timeout: Double = 15, finish: ((Data?) -> Void)? = nil) {
        // reloadIgnoringLocalAndRemoteCacheData忽略暫存
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: timeout)
        request.httpMethod = method.rawValue
        request.httpBody = body
        let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
            // 判斷資料取得失敗的狀況
            if let error = error {
                print(error)
                finish?(nil)
                return
            }
            guard let data = data else { return }
            // 成功取得資料
            finish?(data)
        }
        task.resume()
    }
    
    
}
