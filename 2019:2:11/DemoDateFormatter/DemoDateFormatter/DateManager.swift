//
//  DateManager.swift
//  DemoDateFormatter
//
//  Created by Louis on 2019/2/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

class DateManager {
    enum Zone: String {
        case taiwan = "GMT+8"
        case hawaii = "GMT-10"
        case india = "GMT+5"
    }
    enum Format: String {
        case format1 = "yyyy.MM.dd HH:mm:ss zzzz"
        case format2 = "yyyy.MM.dd"
        case format3 = "HH:mm:ss"
    }
    
    func stringToDate(zone: Zone = .taiwan, string: String, format: Format) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: zone.rawValue)
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.date(from: string)
    }
    
    func dateToString(zone: Zone = .taiwan, date: Date, format: Format) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: zone.rawValue)
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: date)
    }
    
}
