//
//  MainDataManager.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import UIKit

class MainDataManager {
    
    var trucks = [TruckModel]()
    var tracks = [String: [TrackModel]]()
    
    // @escaping用意，代表該function結束後completion才會用到，系統會要求要加
    func fetchTrackData(_ completion: @escaping () -> Void) {
        let path = "http://data.ntpc.gov.tw/od/data/api/EDC3AD26-8AE7-4916-A00B-BC6048D19BF8?$format=json"
        guard let url = URL(string: path) else { return }
        ClientManager().getJsonData(method: .get, url: url) { data in
            // defer目的為把主要心力放在main執行,待fetchTrackData這個func結束最後再執行
            defer {
                // DispatchQueue目的為把主要心力放在main執行,待fetchTrackData這個func結束最後再執行
                DispatchQueue.main.async {
                    completion()
                }
            }

            guard let data = data else { return }
            do {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "HH:mm"
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                let dataArray = try decoder.decode([TrackModel].self, from: data)
                self.tracks.removeAll() //清空資料，避免頭針殘留
                let nameArray = Set(dataArray.map({ $0.line_name! }))    // 透過Set可以篩選重複路線
                let set = Set(nameArray)
                
                for name in set {
                    let filteredArray = dataArray.filter({ model -> Bool in
                        model.line_name == name
                    })
                    self.tracks[name] = filteredArray   //將路線資訊逐一添加到陣列之中
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchTruckData(_ completion: @escaping () -> Void) {
        let path = "http://data.ntpc.gov.tw/od/data/api/28AB4122-60E1-4065-98E5-ABCCB69AACA6?$format=json"
        guard let url = URL(string: path) else { return }
        ClientManager().getJsonData(method: .get, url: url) { data in
            // defer目的為把主要心力放在main執行,待fetchTruckData這個func結束最後再執行
            defer {
                // DispatchQueue目的為把主要心力放在main執行,待fetchTruckData這個func結束最後再執行
                DispatchQueue.main.async {
                    completion()
                }
            }
            
            guard let data = data else { return }
            do {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                let dataArray = try decoder.decode([TruckModel].self, from: data)
                for model in dataArray {
                    print(model)
                }
            } catch {
                print(error)
            }
        }
    }
    
    /// tapHandler 帶入 line_id 以供檢索
    func showTracks(_ target: UIViewController, tapHandler: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: "垃圾車清運路線", message: nil, preferredStyle: .actionSheet)
        self.tracks.forEach { (name, point) in
            let action = UIAlertAction(title: name, style: .default, handler: { _ in
                tapHandler(point.first?.line_id ?? "")
            })
            alertController.addAction(action)
        }
        target.present(alertController, animated: true)
    }
    
}
