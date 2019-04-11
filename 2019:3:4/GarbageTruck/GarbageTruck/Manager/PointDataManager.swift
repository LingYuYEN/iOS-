//
//  PointDataManager.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/20.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

class PointDataManager {
    
    var model: TrackModel?
    
    private var city: (String, String) {
        return ("行政區：", model?.city ?? "")
    }
    private var line_name: (String, String) {
        return ("清運路線名稱：", model?.line_name ?? "")
    }
    private var name: (String, String) {
        return ("清運點名稱：", model?.name ?? "")
    }
    private var village: (String, String) {
        return ("清運點所屬里：", model?.village ?? "")
    }
    private var time: (String, String) {
        return ("表定抵達清運時間：", model?.time ?? "")
    }
    
    private var garbage: (String, String) {
        var days = [String]()
        if let garbage_sun = model?.garbage_sun, garbage_sun {
            days.append("週日")
        }
        if let garbage_mon = model?.garbage_sun, garbage_mon {
            days.append("週一")
        }
        if let garbage_tue = model?.garbage_sun, garbage_tue {
            days.append("週二")
        }
        if let garbage_wed = model?.garbage_sun, garbage_wed {
            days.append("週三")
        }
        if let garbage_thu = model?.garbage_sun, garbage_thu {
            days.append("週四")
        }
        if let garbage_fri = model?.garbage_sun, garbage_fri {
            days.append("週五")
        }
        if let garbage_sat = model?.garbage_sun, garbage_sat {
            days.append("週六")
        }

        
        
        
        
        return ("一般垃圾清運：", days.joined(separator: ""))
    }
    
    
    var infoArray: [(title: String, sub: String)] {
        return [self.city, self.line_name, self.name, self.village, self.time, self.garbage]
    }
    
    
    
    
    
}
