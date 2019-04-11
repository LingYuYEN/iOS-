//
//  TruckModel.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/4.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation
import MapKit

struct TruckModel: Decodable, GarbageProtocol {
    /// 清運路線編號
    var line_id: String?
    ///車牌號碼
    var car: String?
    /// 回報時間
    var time: Date?
    /// 所在位址
    var location: String?
    /// 經緯度座標
    var coordinate: CLLocationCoordinate2D?
//    /// 經度
//    var longitude: String?
//    /// 緯度
//    var latitude: String?
    /// 行政區代號
    var city_id: String?
    /// 行政區名稱
    var city_name: String?
    
    // 以下enum為了使用自己宣告的變數
    enum CodingKeys: String, CodingKey {
        case line_id = "lineid"
        case car, time, location, longitude, latitude
        case city_id = "cityid"
        case city_name = "cityname"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.line_id = try container.decode(String.self, forKey: .line_id)
        self.car = try container.decode(String.self, forKey: .car)
        self.time = try container.decode(Date.self, forKey: .time)
        self.location = try container.decode(String.self, forKey: .location)
        let longitude = try container.decode(String.self, forKey: .longitude)
        let latitude = try container.decode(String.self, forKey: .latitude)
        
        // 50將經緯度轉型為Double，才能51放進coordinate
        if let longitude = Double(longitude), let latitude = Double(latitude) {
            self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
        
        self.city_id = try container.decode(String.self, forKey: .city_id)
        self.city_name = try container.decode(String.self, forKey: .city_name)
    }
    
}




