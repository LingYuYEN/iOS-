//
//  TrackModel.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/4.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation
import MapKit

protocol GarbageProtocol {
    
}

struct TrackModel: Decodable, GarbageProtocol {
    /// 行政區
    var city: String?
    /// 清運路線編號
    var line_id: String?
    /// 清運路線名稱
    var line_name: String?
    /// 清運序
    var rank: String?
    /// 清運點名稱
    var name: String?
    /// 清運點所屬里
    var village: String?
    /// 經緯度座標
    var coordinate: CLLocationCoordinate2D?
//    /// 經度
//    var longitude: String?
//    /// 緯度
//    var latitude: String?
    /// 表定抵達清運時間
    var time: String?
    /// 備註
    var memo: String?
    /// 一般垃圾清運-星期日
    var garbage_sun: Bool?
    /// 一般垃圾清運-星期一
    var garbage_mon: Bool?
    /// 一般垃圾清運-星期二
    var garbage_tue: Bool?
    /// 一般垃圾清運-星期三
    var garbage_wed: Bool?
    /// 一般垃圾清運-星期四
    var garbage_thu: Bool?
    /// 一般垃圾清運-星期五
    var garbage_fri: Bool?
    /// 一般垃圾清運-星期六
    var garbage_sat: Bool?
    /// 資源回收清運-星期日
    var recycling_sun: Bool?
    /// 資源回收清運-星期一
    var recycling_mon: Bool?
    /// 資源回收清運-星期二
    var recycling_tue: Bool?
    /// 資源回收清運-星期三
    var recycling_wed: Bool?
    /// 資源回收清運-星期四
    var recycling_thu: Bool?
    /// 資源回收清運-星期五
    var recycling_fri: Bool?
    /// 資源回收清運-星期六
    var recycling_sat: Bool?
    /// 廚餘清運-星期日
    var foodscraps_sun: Bool?
    /// 廚餘清運-星期一
    var foodscraps_mon: Bool?
    /// 廚餘清運-星期二
    var foodscraps_tue: Bool?
    /// 廚餘清運-星期三
    var foodscraps_wed: Bool?
    /// 廚餘清運-星期四
    var foodscraps_thu: Bool?
    /// 廚餘清運-星期五
    var foodscraps_fri: Bool?
    /// 廚餘清運-星期六
    var foodscraps_sat: Bool?
    
    enum CodingKeys: String, CodingKey {
        case line_id = "lineid"
        case line_name = "linename"
        case city, rank, name, village, longitude, latitude, time, memo, garbage_sun, garbage_mon, garbage_tue, garbage_wed, garbage_thu, garbage_fri, garbage_sat, recycling_sun, recycling_mon, recycling_tue, recycling_wed, recycling_thu, recycling_fri, recycling_sat, foodscraps_sun, foodscraps_mon, foodscraps_tue, foodscraps_wed, foodscraps_thu, foodscraps_fri, foodscraps_sat
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.city = try container.decode(String.self, forKey: .city)
        self.line_id = try container.decode(String.self, forKey: .line_id)
        self.line_name = try container.decode(String.self, forKey: .line_name)
        self.rank = try container.decode(String.self, forKey: .rank)
        self.name = try container.decode(String.self, forKey: .name)
        self.village = try container.decode(String.self, forKey: .village)
        let longitude = try container.decode(String.self, forKey: .longitude)
        let latitude = try container.decode(String.self, forKey: .latitude)
        
        if let longitude = Double(longitude), let latitude = Double(latitude) {
            self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
        
        self.time = try container.decode(String.self, forKey: .time)
        self.memo = try container.decode(String.self, forKey: .memo)
        
        let garbage_sun = try container.decode(String.self, forKey: .garbage_sun)
        self.garbage_sun = garbage_sun == "Y"
        let garbage_mon = try container.decode(String.self, forKey: .garbage_mon)
        self.garbage_mon = garbage_mon == "Y"
        let garbage_tue = try container.decode(String.self, forKey: .garbage_tue)
        self.garbage_tue = garbage_tue == "Y"
        let garbage_wed = try container.decode(String.self, forKey: .garbage_wed)
        self.garbage_wed = garbage_wed == "Y"
        let garbage_thu = try container.decode(String.self, forKey: .garbage_thu)
        self.garbage_thu = garbage_thu == "Y"
        let garbage_fri = try container.decode(String.self, forKey: .garbage_fri)
        self.garbage_fri = garbage_fri == "Y"
        let garbage_sat = try container.decode(String.self, forKey: .garbage_sat)
        self.garbage_sat = garbage_sat == "Y"
        let recycling_sun = try container.decode(String.self, forKey: .recycling_sun)
        self.recycling_sun = recycling_sun == "Y"
        let recycling_mon = try container.decode(String.self, forKey: .recycling_mon)
        self.recycling_mon = recycling_mon == "Y"
        let recycling_tue = try container.decode(String.self, forKey: .recycling_tue)
        self.recycling_tue = recycling_tue == "Y"
        let recycling_wed = try container.decode(String.self, forKey: .recycling_wed)
        self.recycling_wed = recycling_wed == "Y"
        let recycling_thu = try container.decode(String.self, forKey: .recycling_thu)
        self.recycling_thu = recycling_thu == "Y"
        let recycling_fri = try container.decode(String.self, forKey: .recycling_fri)
        self.recycling_fri = recycling_fri == "Y"
        let recycling_sat = try container.decode(String.self, forKey: .recycling_sat)
        self.recycling_sat = recycling_sat == "Y"
        let foodscraps_sun = try container.decode(String.self, forKey: .foodscraps_sun)
        self.foodscraps_sun = foodscraps_sun == "Y"
        let foodscraps_mon = try container.decode(String.self, forKey: .foodscraps_mon)
        self.foodscraps_mon = foodscraps_mon == "Y"
        let foodscraps_tue = try container.decode(String.self, forKey: .foodscraps_tue)
        self.foodscraps_tue = foodscraps_tue == "Y"
        let foodscraps_wed = try container.decode(String.self, forKey: .foodscraps_wed)
        self.foodscraps_wed = foodscraps_wed == "Y"
        let foodscraps_thu = try container.decode(String.self, forKey: .foodscraps_thu)
        self.foodscraps_thu = foodscraps_thu == "Y"
        let foodscraps_fri = try container.decode(String.self, forKey: .foodscraps_fri)
        self.foodscraps_fri = foodscraps_fri == "Y"
        let foodscraps_sat = try container.decode(String.self, forKey: .foodscraps_sat)
        self.foodscraps_sat = foodscraps_sat == "Y"
    }
    
}
