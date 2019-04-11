//
//  CarModel.swift
//  DemoURLSession
//
//  Created by Louis on 2019/2/27.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

// class可以繼承，struct不能繼承，下列Codable為Protocol
struct CarModel: Codable {
    var lineid: String?
    var car: String?
    var time: String?
    var location: String?
    var X: Double?
    var Y: Double?
}
